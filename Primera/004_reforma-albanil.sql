SELECT * FROM `Ejercicio-Reformas`.Albanil;
INSERT INTO `Ejercicio-Reformas`.Albanil (DNI, nombre, apellidos, movil, fechaNacimiento, sueldo, idCuadrilla_Propia_FK) VALUES ('12345678A', 'Paco', 'Martínez Sánchez', 612345678, '1987-06-19', 1250.5, 1);
INSERT INTO `Ejercicio-Reformas`.Albanil (DNI, nombre, apellidos, movil, fechaNacimiento, sueldo, idCuadrilla_Propia_FK) VALUES ('12345678B', 'Juan', 'Fernández Martín', 612345679, '1996-11-07', 1570.3, 2);
INSERT INTO `Ejercicio-Reformas`.Albanil (DNI, nombre, apellidos, movil, fechaNacimiento, sueldo, idCuadrilla_Propia_FK) VALUES ('12345678C', 'José', 'Jiménez Hernández', 612345670, '1991-05-03', 1340.2, 3);
INSERT INTO `Ejercicio-Reformas`.Albanil (DNI, nombre, apellidos, movil, fechaNacimiento, sueldo, idCuadrilla_Propia_FK) VALUES ('12345678D', 'Lucas', 'Salazar', 612345671, '1995-02-02', 1250.5, 5);
INSERT INTO `Ejercicio-Reformas`.Albanil (DNI, nombre, apellidos, movil, fechaNacimiento, sueldo, idCuadrilla_Propia_FK) VALUES ('12345678E', 'Pedro', 'Pérez', 612345672, '1973-09-25', 1250.5, 6);
INSERT INTO `Ejercicio-Reformas`.Albanil (DNI, nombre, apellidos, movil, fechaNacimiento, sueldo, idCuadrilla_Propia_FK) VALUES ('12345678F', 'Carlos', 'Blanco', 612345673, '1976-06-04', 1250.5, 7);

SELECT * FROM `Ejercicio-Reformas`.Buhardilla;
INSERT INTO `Ejercicio-Reformas`.Buhardilla (numVentanas, tipoEscalera, idReforma_FK) VALUES (12, 'Escalera1', 1);

SELECT * FROM `Ejercicio-Reformas`.Cerramiento;
INSERT INTO `Ejercicio-Reformas`.Cerramiento (calidad, cubierta, idReforma_FK) VALUES ('Buena', 'Protejida', 2);

SELECT * FROM `Ejercicio-Reformas`.Cuadrilla;
INSERT INTO `Ejercicio-Reformas`.Cuadrilla (nombre) VALUES ('Cuadrilla1');
INSERT INTO `Ejercicio-Reformas`.Cuadrilla (nombre) VALUES ('Cuadrilla2');
INSERT INTO `Ejercicio-Reformas`.Cuadrilla (nombre) VALUES ('Cuadrilla3');
INSERT INTO `Ejercicio-Reformas`.Cuadrilla (nombre) VALUES ('Cuadrilla4');
INSERT INTO `Ejercicio-Reformas`.Cuadrilla (nombre) VALUES ('Cuadrilla5');
INSERT INTO `Ejercicio-Reformas`.Cuadrilla (nombre) VALUES ('Cuadrilla6');
INSERT INTO `Ejercicio-Reformas`.Cuadrilla (nombre) VALUES ('Cuadrilla7');
INSERT INTO `Ejercicio-Reformas`.Cuadrilla (nombre) VALUES ('Cuadrilla8');
INSERT INTO `Ejercicio-Reformas`.Cuadrilla (nombre) VALUES ('Cuadrilla9');

SELECT * FROM `Ejercicio-Reformas`.Cuadrilla_Externa;
INSERT INTO `Ejercicio-Reformas`.Cuadrilla_Externa (CIF, telefono, actividad, email, numPersonas, idCuadrilla_FK, idPoliza_Seguro_FK) VALUES ('A12345678', 976123456, 'Pintores', 'cuadrilla4@gmail.com', 8, 4, 1);
INSERT INTO `Ejercicio-Reformas`.Cuadrilla_Externa (CIF, telefono, actividad, email, numPersonas, idCuadrilla_FK, idPoliza_Seguro_FK) VALUES ('B12345678', 976123457, 'Fontaneros', 'cuadrilla5@gmail.com', 13, 5, 2);
INSERT INTO `Ejercicio-Reformas`.Cuadrilla_Externa (CIF, telefono, actividad, email, numPersonas, idCuadrilla_FK, idPoliza_Seguro_FK) VALUES ('C12345678', 976123458, 'Alicatadores', 'cuadrilla6@gmail.com', 9, 6, 3);

SELECT * FROM `Ejercicio-Reformas`.Cuadrilla_Propia;
INSERT INTO `Ejercicio-Reformas`.Cuadrilla_Propia (localidad, idCuadrilla_FK) VALUES ('Zaragoza', 1);
INSERT INTO `Ejercicio-Reformas`.Cuadrilla_Propia (localidad, idCuadrilla_FK) VALUES ('Huesca', 2);
INSERT INTO `Ejercicio-Reformas`.Cuadrilla_Propia (localidad, idCuadrilla_FK) VALUES ('Teruel', 3);
INSERT INTO `Ejercicio-Reformas`.Cuadrilla_Propia (localidad, idCuadrilla_FK) VALUES ('Zaragoza', 7);
INSERT INTO `Ejercicio-Reformas`.Cuadrilla_Propia (localidad, idCuadrilla_FK) VALUES ('Huesca', 8);
INSERT INTO `Ejercicio-Reformas`.Cuadrilla_Propia (localidad, idCuadrilla_FK) VALUES ('Teruel', 9);

SELECT * FROM `Ejercicio-Reformas`.Maestro;
INSERT INTO `Ejercicio-Reformas`.Maestro (anyosExperiencia, numSegSoc, idAlbanil_FK) VALUES (10, 123456789012, '12345678A');
INSERT INTO `Ejercicio-Reformas`.Maestro (anyosExperiencia, numSegSoc, idAlbanil_FK) VALUES (3, 123456789013, '12345678B');
INSERT INTO `Ejercicio-Reformas`.Maestro (anyosExperiencia, numSegSoc, idAlbanil_FK) VALUES (7, 123456789014, '12345678C');

SELECT * FROM `Ejercicio-Reformas`.Material;
INSERT INTO `Ejercicio-Reformas`.Material (descripcion, precioUnitario) VALUES ('Ladrillo', 2.35);
INSERT INTO `Ejercicio-Reformas`.Material (descripcion, precioUnitario) VALUES ('Cemento', 1.79);
INSERT INTO `Ejercicio-Reformas`.Material (descripcion, precioUnitario) VALUES ('Cristal', 4.75);

SELECT * FROM `Ejercicio-Reformas`.Peon;
INSERT INTO `Ejercicio-Reformas`.Peon (nacionalidad, idAlbanil_FK) VALUES ('Española', '12345678D');
INSERT INTO `Ejercicio-Reformas`.Peon (nacionalidad, idAlbanil_FK) VALUES ('Española', '12345678E');
INSERT INTO `Ejercicio-Reformas`.Peon (nacionalidad, idAlbanil_FK) VALUES ('Española', '12345678F');

SELECT * FROM `Ejercicio-Reformas`.Poliza_Seguro;
INSERT INTO `Ejercicio-Reformas`.Poliza_Seguro (compania, cobertura) VALUES ('AXA', 'Completa');
INSERT INTO `Ejercicio-Reformas`.Poliza_Seguro (compania, cobertura) VALUES ('Pelayo', 'Completa');
INSERT INTO `Ejercicio-Reformas`.Poliza_Seguro (compania, cobertura) VALUES ('MAPFRE', 'Completa');

SELECT * FROM `Ejercicio-Reformas`.Reforma;
INSERT INTO `Ejercicio-Reformas`.Reforma (DNIcliente, nombre, apellidos, telefono, direccion, localidad, codPostal, fechaInicio_propia, fechaFin_propia, idCuadrilla_Propia_FK) VALUES ('12345678G', 'Marcos', 'Jiménez', 611655411, 'Calle Mayor', 'Zaragoza', 50004, '2024-10-06', '2024-11-25', 1);
INSERT INTO `Ejercicio-Reformas`.Reforma (DNIcliente, nombre, apellidos, telefono, direccion, localidad, codPostal, fechaInicio_propia, fechaFin_propia, idCuadrilla_Propia_FK) VALUES ('12345678H', 'Pablo', 'Martínez', 611655412, 'Calle Menor', 'Zaragoza', 50005, '2024-12-12', '2024-12-22', 2);
INSERT INTO `Ejercicio-Reformas`.Reforma (DNIcliente, nombre, apellidos, telefono, direccion, localidad, codPostal, fechaInicio_propia, fechaFin_propia, idCuadrilla_Propia_FK) VALUES ('12345678I', 'Laura', 'Casas', 611655414, 'Calle Del Pilar', 'Zaragoza', 50003, '2024-11-09', '2024-12-15', 3);

SELECT * FROM `Ejercicio-Reformas`.`Reforma-Externa`;
INSERT INTO `Ejercicio-Reformas`.`Reforma-Externa` (fechaInicio, fechaFin, idCuadrilla_Externa_FK, idReforma_FK) VALUES ('2024-12-02', '2024-12-10', 'A12345678', 1);

SELECT * FROM `Ejercicio-Reformas`.`Reforma-Material`;
INSERT INTO `Ejercicio-Reformas`.`Reforma-Material` (cantidad, idReforma_FK, idMaterial_FK) VALUES (100, 1, 2);

SELECT * FROM `Ejercicio-Reformas`.Solado;
INSERT INTO `Ejercicio-Reformas`.Solado (numMetros, metrosHormigon, tipoBaldosa, idReforma_FK) VALUES (123, 12, 'Dura', 3);

/* Muestra todos los albañiles que hayan nacido antes del 02/02/1995 junto al NOMBRE de la cuadrilla a la que pertenece. */
SELECT A.nombre, A.fechaNacimiento, C.nombre 
FROM `Ejercicio-Reformas`.Albanil AS A, `Ejercicio-Reformas`.Cuadrilla AS C, `Ejercicio-Reformas`.Cuadrilla_Propia AS CP
WHERE C.idCuadrilla = CP.idCuadrilla_FK AND CP.idCuadrilla_Propia = A.idCuadrilla_Propia_FK AND A.fechaNacimiento <= '1995-02-02';

/* Muestra el nombre de cuadrillas que se han encargado de realizar la reforma con id = 1 (muestra únicamente el DNI y nombre del cliente 
sobre el que se hace la reforma). Esta reforma debe tener al menos 3 cuadrillas. */
SELECT C.nombre, R.DNIcliente, R.nombre
FROM `Ejercicio-Reformas`.Cuadrilla AS C, `Ejercicio-Reformas`.Cuadrilla_Propia AS CP, 
`Ejercicio-Reformas`.Cuadrilla_Externa AS CE, `Ejercicio-Reformas`.Reforma AS R, `Ejercicio-Reformas`.`Reforma-Externa` AS RE
WHERE R.idReforma = 1 AND (CP.idCuadrilla_FK = C.idCuadrilla OR CE.idCuadrilla_FK = C.idCuadrilla) AND R.idCuadrilla_Propia_FK = CP.idCuadrilla_Propia
AND RE.idReforma_FK = R.idReforma AND RE.idCuadrilla_Externa_FK = CE.CIF;

/* Muestra los nombres de las cuadrillas externas que no hayan participado nunca en ninguna reforma. */
SELECT C.nombre
FROM `Ejercicio-Reformas`.Cuadrilla AS C, `Ejercicio-Reformas`.Cuadrilla_Externa AS CE
WHERE C.idCuadrilla = CE.idCuadrilla_FK AND CE.CIF NOT IN (SELECT RE.idCuadrilla_Externa_FK FROM `Ejercicio-Reformas`.`Reforma-Externa` AS RE);