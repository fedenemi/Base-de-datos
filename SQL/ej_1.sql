-- Obtener el padron y apellido de el/los alumno/s que tenga/n la mayor cantidad de
-- materias aprobadas.
-- Nota: Considerar la posibilidad de que sean mas de uno.

select n.padron, a.apellido 
from notas n
join alumnos a on n.padron=a.padron
where n.nota >= 4
group by n.padron,a.apellido
having count(*) >=all(
select count(*) as materias_aprobadas
from notas n2
where n2.nota >= 4
group by n2.padron
)

--	"padron"	"apellido"
--   73000		"Molina"
--   86000		"Díaz"