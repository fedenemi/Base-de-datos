-- Listar el padron de aquellos alumnos que, por lo menos, tienen nota en todas las
-- materias que aprobo el alumno de padron 71000.

 SELECT n.padron
 FROM alumnos a
 JOIN notas n ON a.padron = n.padron
 JOIN (
 SELECT codigo, numero
 FROM notas
 WHERE padron = 71000 AND nota >= 4
 ) AS estudiante_71000 ON estudiante_71000.codigo = n.codigo AND estudiante_71000.numero = n.numero
 WHERE a.padron <> 71000
 GROUP BY n.padron
 HAVING COUNT(n.nota) >= (SELECT COUNT(*) FROM notas WHERE padron = 71000 AND nota >= 4)
	 
--"padron"
-- 73000
-- 75000
-- 88000
-- 72000
