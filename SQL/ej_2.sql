-- Obtener el padron y apellido de aquellos alumnos que tienen nota en las materias 71.14
-- y 71.15 y no tienen nota ni en la materia 75.01 ni en 75.15.

SELECT DISTINCT a.padron, a.apellido
FROM alumnos a
JOIN notas n1 ON a.padron = n1.padron
JOIN notas n2 ON a.padron = n2.padron
WHERE n1.codigo = '71.14'
  AND n2.codigo = '71.15'
  AND NOT EXISTS (
    SELECT 1
    FROM notas n3
    WHERE a.padron = n3.padron
      AND n3.codigo IN ('75.01', '75.15')
  );

--"padron"	"apellido"
-- 86000	"Díaz"
