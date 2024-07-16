-- Para cada nota del alumno mas antiguo, mostrar su padron, codigo de departamento,
-- numero de materia y el valor de la nota.
-- Nota: En caso de que sean mas de uno los alumnos mas antiguos, mostrar dichos datos
-- para todos esos alumnos.
-- Nota 2: Si bien en la realidad puede darse que los valores de padron sean estrictamente
-- crecientes en el tiempo. NO utilizar este criterio para determinar al alumno
-- mas antiguo.



select a.padron, n.codigo AS codigo_departamento, n.numero AS numero_materia, n.nota
from alumnos a join notas n using(padron)
where a.fecha_ingreso <= all (
select distinct a2.fecha_ingreso
from alumnos a2)

--"padron"	"codigo_departamento"	"numero_materia"	"nota"
-- 71000     75						 1				     4
-- 71000	 75					     6 					 2
-- 71000	 75						 6					 6
-- 71000	 71					 	 14					 7