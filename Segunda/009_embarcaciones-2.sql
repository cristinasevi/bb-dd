/* 11. Teléfonos de cada socio que tenga una embarcación de tipo pesquero que esté en un muelle que lo atienda algún empleado de especialidad distinta a motor. */
SELECT A.nombre, B.telefono, C.nombre, C.tipo, D.numero, F.nombre, F.especialidad
FROM EMBARCACIONES.Socio AS A JOIN EMBARCACIONES.Telefonos_Socio AS B 
JOIN EMBARCACIONES.Embarcacion AS C JOIN EMBARCACIONES.Muelle AS D
JOIN EMBARCACIONES.Atiende AS E JOIN EMBARCACIONES.Empleado AS F
ON (A.nif = B.nif_socio) AND (A.nif = C.nif_dueño) AND 
(C.matricula = D.matr_embarcacion) AND (E.num_muelle = D.numero) 
AND (E.cod_empleado = F.codigo) AND C.tipo = 'pesquero' 
AND F.especialidad NOT IN ('motor');

/* 12. 1 teléfono de cada socio que tenga una embarcación de tipo pesquero que esté en un muelle que lo atienda algún empleado de especialidad distinta a motor. */
SELECT DISTINCT A.nombre, 
       (SELECT B.telefono 
        FROM EMBARCACIONES.Telefonos_Socio AS B 
        WHERE B.nif_socio = A.nif 
        LIMIT 1) AS telefono, 
       C.nombre, C.tipo, D.numero, F.nombre, F.especialidad
FROM EMBARCACIONES.Socio AS A 
JOIN EMBARCACIONES.Embarcacion AS C ON A.nif = C.nif_dueño
JOIN EMBARCACIONES.Muelle AS D ON C.matricula = D.matr_embarcacion
JOIN EMBARCACIONES.Atiende AS E ON D.numero = E.num_muelle
JOIN EMBARCACIONES.Empleado AS F ON E.cod_empleado = F.codigo
WHERE C.tipo = 'pesquero' 
AND F.especialidad NOT IN ('motor');

/* 13. Número de empleados de cada especialidad. */
SELECT A.especialidad, COUNT(*)
FROM EMBARCACIONES.Empleado AS A
GROUP BY A.especialidad;

/* 14. ¿Cuántos teléfonos tiene cada socios cuyo nombre empiece por A? */
SELECT A.nombre, COUNT(B.telefono) AS cantidad_telefonos
FROM EMBARCACIONES.Socio AS A JOIN EMBARCACIONES.Telefonos_Socio AS B 
ON (A.nif = B.nif_socio) AND A.nombre LIKE 'A%'
GROUP BY A.nombre;

/* 15. ¿Cuántas embarcaciones tiene cada socio? */
SELECT A.nombre, COUNT(B.matricula) AS cantidad_embarcaciones
FROM EMBARCACIONES.Socio AS A JOIN EMBARCACIONES.Embarcacion AS B 
ON (A.nif = B.nif_dueño) 
GROUP BY A.nombre;

/* 16. Muelles que tienen embarcaciones que no pertenecen al socio propietario de ese muelle: Mostrar nombre del socio propietario de la embarcación y el nombre del socio propietario del muelle. */
SELECT A.numero, C.nombre AS propietario_embarcacion, D.nombre AS propietario_muelle
FROM EMBARCACIONES.Muelle AS A
JOIN EMBARCACIONES.Embarcacion AS B ON A.matr_embarcacion = B.matricula
JOIN EMBARCACIONES.Socio AS C ON B.nif_dueño = C.nif
JOIN EMBARCACIONES.Socio AS D ON A.nif_propietario = D.nif
WHERE B.nif_dueño <> A.nif_propietario;

/* 17. Mostrar el número de embarcaciones que tiene cada socio en sus muelles sin que sean suyas, es decir que el propietario de la embarcación es distinto al propietario del muelle donde está esa embarcación. */
SELECT S.nombre, COUNT(E.matricula) AS num_embarcaciones
FROM EMBARCACIONES.Muelle AS M
JOIN EMBARCACIONES.Embarcacion AS E ON M.matr_embarcacion = E.matricula
JOIN EMBARCACIONES.Socio AS S ON M.nif_propietario = S.nif
WHERE E.nif_dueño <> M.nif_propietario
GROUP BY S.nombre;

/* 18. Mostrar las embarcaciones de las que se encargan 2 o más empleados. */
SELECT A.matr_embarcacion, COUNT(A.cod_empleado) AS num_empleados
FROM EMBARCACIONES.Se_Encarga AS A
GROUP BY A.matr_embarcacion
HAVING COUNT(A.cod_empleado) >= 2;

/* 19. Mostrar el ranking de años donde más socios ingresaron, sólo años que ingresaron más de 2 socios. */
SELECT 
    YEAR(A.fecha_ingreso) AS año_ingreso, 
    COUNT(A.nif) AS total_socios
FROM EMBARCACIONES.Socio AS A
GROUP BY YEAR(A.fecha_ingreso)
HAVING COUNT(A.nif) >= 2
ORDER BY total_socios DESC;

/* 20. Mostrar el ranking de empleados que más trabajo tienen (muelles que atienden sumado a embarcaciones de las que se encargan), sólo de empleados que tienen más de 2 trabajos. */
SELECT A.codigo AS cod_empleado, COUNT(DISTINCT B.numero) + COUNT(DISTINCT C.matr_embarcacion) AS trabajos
FROM EMBARCACIONES.Empleado AS A JOIN EMBARCACIONES.Muelle AS B JOIN EMBARCACIONES.Se_Encarga AS C
ON A.codigo = C.cod_empleado AND B.matr_embarcacion = C.matr_embarcacion
GROUP BY A.codigo
HAVING COUNT(DISTINCT B.numero) + COUNT(DISTINCT C.matr_embarcacion) > 2;

/* ¿Cómo la modificarías si nos pidieran también el nombre del empleado?. */
SELECT A.codigo AS cod_empleado, A.nombre, COUNT(DISTINCT B.numero) + COUNT(DISTINCT C.matr_embarcacion) AS trabajos
FROM EMBARCACIONES.Empleado AS A JOIN EMBARCACIONES.Muelle AS B JOIN EMBARCACIONES.Se_Encarga AS C
ON A.codigo = C.cod_empleado AND B.matr_embarcacion = C.matr_embarcacion
GROUP BY A.codigo, A.nombre
HAVING COUNT(DISTINCT B.numero) + COUNT(DISTINCT C.matr_embarcacion) > 2;