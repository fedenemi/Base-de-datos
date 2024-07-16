Mostrar el padron, apellido y promedio para aquellos alumnos que tienen nota en mas
de 3 materias y un promedio de al menos 5.

select a.padron, a.apellido, avg(n.nota) as promedio
from alumnos a join notas n using (padron)
group by a.padron, a.apellido
having count(distinct CONCAT(n.codigo, n.numero)) > 3 and avg(n.nota) >= 5

--"padron"	"apellido"	"promedio"
-- 73000	"Molina"	6.6000000000000000
-- 75000	"Onelli"	5.2000000000000000
-- 83000	"Gómez" 	8.5000000000000000
-- 84000	"López" 	7.5000000000000000
-- 85000	"Fernández" 8.2500000000000000
-- 86000	"Díaz"  	7.8000000000000000
-- 87000	"Hernández"	7.5000000000000000
-- 88000	"Vargas"	8.2500000000000000