-- Se necesita saber el promedio general para cada carrera y cada departamento.
-- Devolviendo codigo de carrera, codigo de departamento, y el promedio de notas para
-- todos los alumnos de cada departamneto, ordenados por carrera y departamento.
-- Nota: no considerar combinaciones de departamento / carrera tal que no haya alumnos
-- de dicha carrera con notas en dicho departamento.
-- Nota 2: Si un alumno esta inscripto en mas de una carrera, sus notas aportan a los
-- promedios de todas esas carreras.

SELECT i.codigo AS codigo_carrera, n.codigo AS codigo_departamento, AVG(n.nota) AS promedio_notas
from inscripto_en i JOIN notas n ON i.padron = n.padron  
GROUP BY i.codigo, n.codigo
ORDER BY i.codigo, n.codigo;

/*
"codigo_carrera"	"codigo_departamento"	"promedio_notas"
	5					61					 7.0000000000000000
	5					62					 7.2500000000000000
	6					61					 8.8000000000000000
	6					62				   	 7.0000000000000000
	9					71					 6.7142857142857143
	9					75					 6.6923076923076923
	10					71					 6.7500000000000000
	10					75					 6.5000000000000000

*/