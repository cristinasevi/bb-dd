/* 1. Buscar los socios que se inscribieron después del 1 de enero del 2000. */
SELECT A.nif, A.nombre, A.fecha_ingreso
FROM EMBARCACIONES.Socio AS A 
WHERE A.fecha_ingreso > '2000-01-01';

/* 2. Buscar socios en con la dirección contiene port. */
SELECT A.nif, A.nombre, A.direccion
FROM EMBARCACIONES.Socio AS A 
WHERE A.direccion LIKE '%Port%';

/* 3. Socios que se llaman Eric y se inscribieron antes del 2000. */
SELECT A.nombre, A.fecha_ingreso
FROM EMBARCACIONES.Socio AS A 
WHERE A.nombre LIKE 'Eric%' AND fecha_ingreso < '1999-12-31';

/* 4. Socios con nombre que empieza por A y sus teléfonos. */
SELECT A.nombre, B.telefono
FROM EMBARCACIONES.Socio AS A JOIN EMBARCACIONES.Telefonos_Socio AS B
ON (A.nif=B.nif_socio) AND (A.nombre LIKE 'A%');

/* 5. Socios que tienen una embarcación: nombre de socio, matrícula de embarcación y tipo de velero. */
SELECT A.nombre, B.matricula, B.tipo
FROM EMBARCACIONES.Socio AS A JOIN EMBARCACIONES.Embarcacion AS B
ON (A.nif=B.nif_dueño);

/* 6. Embarcaciones con dimensión mayor de 30, número de muelle, y lectura de contador de agua sea superior a 500. */
SELECT A.matricula, A.nombre, A.dimensiones, B.numero, B.lect_cont_agua
FROM EMBARCACIONES.Embarcacion AS A JOIN EMBARCACIONES.Muelle AS B
ON (A.matricula = B.matr_embarcacion) AND A.dimensiones > 30 AND B.lect_cont_agua > 500; 

/* 7. Empleados de especialidad motor, que tienen embarcaciones de tipo lancha. */
SELECT A.nombre, A.especialidad, B.nombre, B.tipo
FROM EMBARCACIONES.Empleado AS A JOIN EMBARCACIONES.Embarcacion AS B JOIN EMBARCACIONES.se_encarga AS C
ON (C.cod_empleado = A.codigo) AND (C.matr_embarcacion = B.matricula) 
AND A.especialidad='motor' AND B.tipo='lancha'; 

/* 8. Devolver los números de muelle y los códigos de empleados que atienden muelles sin mantenimiento. */
SELECT A.numero, B.codigo, A.mantenimiento
FROM EMBARCACIONES.Muelle AS A JOIN EMBARCACIONES.Empleado AS B JOIN EMBARCACIONES.Embarcacion AS C JOIN EMBARCACIONES.Atiende AS D
ON (A.matr_embarcacion = C.matricula) AND (D.cod_empleado = B.codigo) AND (D.num_muelle = A.numero) AND A.mantenimiento = 0; 

/* 9. Nombres de Empleados y número de muelle que atienden muelles con algún contador a menos de 100. */
SELECT A.nombre, B.numero, B.lect_cont_agua, B.lect_cont_luz
FROM EMBARCACIONES.Empleado AS A JOIN EMBARCACIONES.Muelle AS B JOIN EMBARCACIONES.Atiende AS C 
ON (A.codigo = C.cod_empleado) AND (B.numero = C.num_muelle) AND (B.lect_cont_agua < 100 OR B.lect_cont_luz < 100); 

/* 10. Muelles con mantenimiento en donde hay embarcaciones de las que se encarga un empleado con la especialidad de limpieza. */
SELECT B.numero, B.mantenimiento, D.nombre, A.nombre, A.especialidad
FROM EMBARCACIONES.Empleado AS A JOIN EMBARCACIONES.Muelle AS B JOIN EMBARCACIONES.Atiende AS C 
JOIN EMBARCACIONES.Embarcacion AS D JOIN EMBARCACIONES.Se_Encarga AS E
ON (A.codigo = C.cod_empleado) AND (B.numero = C.num_muelle) AND (E.cod_empleado = A.codigo) 
AND (E.matr_embarcacion = D.matricula) AND B.mantenimiento = 1 AND A.especialidad = 'limpieza'; 