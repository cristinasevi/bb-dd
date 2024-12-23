SELECT * FROM examen.Bus;
INSERT INTO examen.Bus (nombre, idColegio_FK) VALUES ('Avanza', 1);
INSERT INTO examen.Bus (nombre, idColegio_FK) VALUES ('Alsa', 2);
INSERT INTO examen.Bus (nombre, idColegio_FK) VALUES ('FlixBus', 3);

SELECT * FROM examen.Calle;
INSERT INTO examen.Calle (nombre) VALUES ('Calle Mayor');
INSERT INTO examen.Calle (nombre) VALUES ('Avenida Valencia');
INSERT INTO examen.Calle (nombre) VALUES ('Paseo Calatayud');

SELECT * FROM examen.Colegio;
INSERT INTO examen.Colegio (nombre) VALUES ('Salesianos');
INSERT INTO examen.Colegio (nombre) VALUES ('Escolapios');
INSERT INTO examen.Colegio (nombre) VALUES ('Montessori');

SELECT * FROM examen.Conductor;
INSERT INTO examen.Conductor (cuenta_bancaria, idTrabajador_FK) VALUES ('ES012345678901234567', 1);
INSERT INTO examen.Conductor (cuenta_bancaria, idTrabajador_FK) VALUES ('ES012345678901234568', 2);
INSERT INTO examen.Conductor (cuenta_bancaria, idTrabajador_FK) VALUES ('ES012345678901234569', 3);

SELECT * FROM examen.Monitor;
INSERT INTO examen.Monitor (idTrabajador_FK) VALUES (4);
INSERT INTO examen.Monitor (idTrabajador_FK) VALUES (5);
INSERT INTO examen.Monitor (idTrabajador_FK) VALUES (6);

SELECT * FROM examen.Pasar;
INSERT INTO examen.Pasar (hora, num_personas, idRuta_Fk, idCalle_Fk) VALUES ('10:00', 13, 2, 1);
INSERT INTO examen.Pasar (hora, num_personas, idRuta_Fk, idCalle_Fk) VALUES ('10:30', 7, 3, 2);
INSERT INTO examen.Pasar (hora, num_personas, idRuta_Fk, idCalle_Fk) VALUES ('11:00', 19, 4, 3);

SELECT * FROM examen.Ruta;
INSERT INTO examen.Ruta (idBus_FK, idConductor_FK, idMonitor_FK) VALUES (1, 1, 1);
INSERT INTO examen.Ruta (idBus_FK, idConductor_FK, idMonitor_FK) VALUES (2, 2, 2);
INSERT INTO examen.Ruta (idBus_FK, idConductor_FK, idMonitor_FK) VALUES (3, 3, 3);

SELECT * FROM examen.Trabajador;
INSERT INTO examen.Trabajador (nombre) VALUES ('Pablo');
INSERT INTO examen.Trabajador (nombre) VALUES ('María');
INSERT INTO examen.Trabajador (nombre) VALUES ('Pepe');
INSERT INTO examen.Trabajador (nombre) VALUES ('Marta');
INSERT INTO examen.Trabajador (nombre) VALUES ('Juan');
INSERT INTO examen.Trabajador (nombre) VALUES ('Laura');

/* Muestra todos los autobuses de la empresa. */
SELECT nombre FROM examen.Bus;

/* Muestra todos los conductos y monitores de la empresa que se llaman Pablo. */
SELECT * FROM examen.Trabajador WHERE nombre='Pablo';

/* Muestra por pantalla los nombres de todas las calles por las que pasa la ruta con identificador 2. */
SELECT (SELECT CA.nombre FROM examen.Calle CA WHERE CA.idCalle = P.idCalle_FK) AS Calle FROM examen.Pasar P WHERE P.idRuta_FK = 2;