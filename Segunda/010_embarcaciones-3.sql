/* 21. Mostrar el ranking de empleados que más trabajo tienen (muelles que atienden más embarcaciones de las que se encargan), sólo de empleados que se encargan de ambas cosas (muelles y embarcaciones). */
SELECT A.nombre, COUNT(DISTINCT B.numero) + COUNT(DISTINCT C.matricula) AS total_trabajo
FROM EMBARCACIONES.Empleado AS A JOIN EMBARCACIONES.Muelle AS B JOIN EMBARCACIONES.Embarcacion AS C
JOIN EMBARCACIONES.Atiende AS D JOIN EMBARCACIONES.Se_Encarga AS E
ON A.codigo = D.cod_empleado AND B.numero = D.num_muelle AND A.codigo = E.cod_empleado 
AND C.matricula = E.matr_embarcacion
GROUP BY (A.nombre)
HAVING COUNT(B.numero) > 0 AND COUNT(C.matricula) > 0;

/* 22. Mostrar embarcaciones de socios que han ingresado en la década de los 90 (usando cláusula exist). */
SELECT A.nombre, B.nombre, YEAR(B.fecha_ingreso) AS año_ingreso
FROM EMBARCACIONES.Embarcacion AS A JOIN EMBARCACIONES.Socio AS B
ON B.nif = A.nif_dueño 
WHERE EXISTS (
    SELECT 1 
    FROM EMBARCACIONES.Socio S
    WHERE S.nif = B.nif 
    AND YEAR(S.fecha_ingreso) > 1990 AND YEAR(S.fecha_ingreso) < 1999
);

/* 23. Mostrar socios que tienen embarcaciones de tipo yate (usando cláusula exist). */
SELECT A.nombre
FROM EMBARCACIONES.Socio AS A
WHERE EXISTS (
    SELECT 1
    FROM EMBARCACIONES.Embarcacion AS B
    WHERE B.nif_dueño = A.nif
    AND B.tipo = 'yate'
);

/* 24. Mostrar empleados y muelles que son atendidos por empleados que se encargan de alguna embarcación de las que se conocen sus dimensiones (usando cláusula exist). */
SELECT A.nombre, B.numero
FROM EMBARCACIONES.Empleado AS A JOIN EMBARCACIONES.Muelle AS B JOIN EMBARCACIONES.Atiende AS C 
ON A.codigo = C.cod_empleado AND B.numero = C.num_muelle
WHERE EXISTS (
	SELECT 1
    FROM EMBARCACIONES.Embarcacion AS E JOIN EMBARCACIONES.Se_Encarga AS S
    ON S.matr_embarcacion = E.matricula
    WHERE S.cod_empleado = A.codigo
    AND E.dimensiones IS NOT null
);

/* 25. Mostrar número de embarcaciones que se conocen sus dimensiones y de las que se encarga algún empleado (usando cláusula exist). */
SELECT COUNT(A.matricula)
FROM EMBARCACIONES.Embarcacion AS A
WHERE EXISTS (
	SELECT 1
    FROM EMBARCACIONES.Se_Encarga AS B JOIN EMBARCACIONES.Empleado AS C
    ON B.cod_empleado = C.codigo 
    WHERE B.matr_embarcacion = A.matricula 
    AND A.dimensiones IS NOT null
);

/* 26. Mostrar el código de empleados que se encargan exclusivamente de todos los barcos de algún socio (usando ALL/ANY). */

/* 27. Mostrar nombres de socios que tienen alguna embarcación con dimensiones superiores a 50 (usando ALL/ANY). */

/* 28. Mostrar socios que todos sus teléfonos acaban en el mismo número. */


/* a. ¿Y si quisiéramos de la consulta anterior solo a los socios que tienen más de un teléfono? */


/* 29. Pero así sólo vemos un teléfono por socio, si queremos ver todos los telefonos, se podria hacer asi: */

/* 30. Mostrar socios que todos sus teléfonos acaban en el mismo número y tienen más de un número de teléfono. */

/* 31. Socios que todas sus embarcaciones son de tipo yate. */
SELECT A.nombre
FROM EMBARCACIONES.Socio AS A
WHERE 'yate' = ALL (
    SELECT B.tipo
    FROM EMBARCACIONES.Embarcacion AS B
    WHERE B.nif_dueño = A.nif
);

/* 32. Clasificar las embarcaciones según sus dimensiones, si la dimensión es menor que 30 será ‘pequeña’, si está entre 30 y 60 será ‘mediana’, si es mayor que 60 será ‘grande’ y sino (si es 0) será ‘desconocido’. */

/* 33. Mostrar las dimensiones de las embarcaciones en pulgadas (1 metro = 39,3701 pulgadas), si la dimensión es nula, devolverá 0 pulgadas. */

/* 34. Mostrar cuántos productos pedidos, porcentaje respecto del total, media de la cantidad pedida agrupando los productos según hayan sido pedidos más de 30 unidades, 30 unidades o menos de 30 unidades, escribiendo en un atributo a qué grupo pertenecen.
Nota: Hacer este último ejercicio en la BD de w3schools, usando la tabla Orderdetails:
OrderDetailID		OrderID	ProductID	Quantity */
