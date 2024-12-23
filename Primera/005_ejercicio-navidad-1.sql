SELECT * FROM EjNavidad1.Alimento;
INSERT INTO EjNavidad1.Alimento (nombre, numToneladas, idAyuda_Material_FK) VALUES ('Tomate', 10, 1);
INSERT INTO EjNavidad1.Alimento (nombre, numToneladas, idAyuda_Material_FK) VALUES ('Trigo', 30, 2);
INSERT INTO EjNavidad1.Alimento (nombre, numToneladas, idAyuda_Material_FK) VALUES ('Maíz', 8, 3);

SELECT * FROM EjNavidad1.Ayuda_Humanitaria;
INSERT INTO EjNavidad1.Ayuda_Humanitaria (idEnvio_FK) VALUES (1);
INSERT INTO EjNavidad1.Ayuda_Humanitaria (idEnvio_FK) VALUES (2);
INSERT INTO EjNavidad1.Ayuda_Humanitaria (idEnvio_FK) VALUES (3);

SELECT * FROM EjNavidad1.Ayuda_Material;
INSERT INTO EjNavidad1.Ayuda_Material (idEnvio_FK) VALUES (4);
INSERT INTO EjNavidad1.Ayuda_Material (idEnvio_FK) VALUES (5);
INSERT INTO EjNavidad1.Ayuda_Material (idEnvio_FK) VALUES (6);
INSERT INTO EjNavidad1.Ayuda_Material (idEnvio_FK) VALUES (7); 
INSERT INTO EjNavidad1.Ayuda_Material (idEnvio_FK) VALUES (8);
INSERT INTO EjNavidad1.Ayuda_Material (idEnvio_FK) VALUES (9);

SELECT * FROM EjNavidad1.Ayuda_Sanitaria; 
INSERT INTO EjNavidad1.Ayuda_Sanitaria (numMedicos, numATS, idAyuda_Humanitaria_FK, idPersonal_Sanitario_FK) VALUES (5, 8, 1, 2);
INSERT INTO EjNavidad1.Ayuda_Sanitaria (numMedicos, numATS, idAyuda_Humanitaria_FK, idPersonal_Sanitario_FK) VALUES (7, 9, 2, 3);
INSERT INTO EjNavidad1.Ayuda_Sanitaria (numMedicos, numATS, idAyuda_Humanitaria_FK, idPersonal_Sanitario_FK) VALUES (3, 2, 3, 4);

SELECT * FROM EjNavidad1.Cuota;
INSERT INTO EjNavidad1.Cuota (tipo, importe) VALUES ('Minima', 10);
INSERT INTO EjNavidad1.Cuota (tipo, importe) VALUES ('Media', 20);
INSERT INTO EjNavidad1.Cuota (tipo, importe) VALUES ('Máxima', 30);

SELECT * FROM EjNavidad1.Envio;
INSERT INTO EjNavidad1.Envio (destino, fecha) VALUES ('Zaragoza', '2024-12-26');
INSERT INTO EjNavidad1.Envio (destino, fecha) VALUES ('Madrid', '2024-12-27');
INSERT INTO EjNavidad1.Envio (destino, fecha) VALUES ('Barcelona', '2024-12-28');
INSERT INTO EjNavidad1.Envio (destino, fecha) VALUES ('Valencia', '2024-12-29');
INSERT INTO EjNavidad1.Envio (destino, fecha) VALUES ('Sevilla', '2024-12-30');
INSERT INTO EjNavidad1.Envio (destino, fecha) VALUES ('Bilbao', '2024-12-31');
INSERT INTO EjNavidad1.Envio (destino, fecha) VALUES ('Granada', '2024-12-29');
INSERT INTO EjNavidad1.Envio (destino, fecha) VALUES ('Murcia', '2024-12-30');
INSERT INTO EjNavidad1.Envio (destino, fecha) VALUES ('Salamanca', '2024-12-31');

SELECT * FROM EjNavidad1.Envio_Sede;
INSERT INTO EjNavidad1.Envio_Sede (idEnvio_FK,  idSede_FK) VALUES (1, 1);
INSERT INTO EjNavidad1.Envio_Sede (idEnvio_FK,  idSede_FK) VALUES (2, 2);
INSERT INTO EjNavidad1.Envio_Sede (idEnvio_FK,  idSede_FK) VALUES (3, 3);

SELECT * FROM EjNavidad1.Medicamento;
INSERT INTO EjNavidad1.Medicamento (nombre, numUnidades, idAyuda_Material_FK) VALUES ('Ibuprofeno', 150, 4);
INSERT INTO EjNavidad1.Medicamento (nombre, numUnidades, idAyuda_Material_FK) VALUES ('Paracetamol', 230, 5);
INSERT INTO EjNavidad1.Medicamento (nombre, numUnidades, idAyuda_Material_FK) VALUES ('Aspirina', 97, 6);

SELECT * FROM EjNavidad1.Personal_Administrativo;
INSERT INTO EjNavidad1.Personal_Administrativo (idVoluntario_FK) VALUES ('1234678G');
INSERT INTO EjNavidad1.Personal_Administrativo (idVoluntario_FK) VALUES ('1234678H');
INSERT INTO EjNavidad1.Personal_Administrativo (idVoluntario_FK) VALUES ('1234678I');

SELECT * FROM EjNavidad1.Personal_Sanitario;
INSERT INTO EjNavidad1.Personal_Sanitario (profesion, disponibilidad, numTrabajos, idVoluntario_FK) VALUES ('Médico', true, 10, '1234678A');
INSERT INTO EjNavidad1.Personal_Sanitario (profesion, disponibilidad, numTrabajos, idVoluntario_FK) VALUES ('ATS', true, 7, '1234678B');
INSERT INTO EjNavidad1.Personal_Sanitario (profesion, disponibilidad, numTrabajos, idVoluntario_FK) VALUES ('Médico', false, 3, '1234678C');

SELECT * FROM EjNavidad1.Sede;
INSERT INTO EjNavidad1.Sede (domicilio, director) VALUES ('Zaragoza', 'José García');
INSERT INTO EjNavidad1.Sede (domicilio, director) VALUES ('Madrid', 'Pedro Martín');
INSERT INTO EjNavidad1.Sede (domicilio, director) VALUES ('Barcelona', 'Laura Fernández');

SELECT * FROM EjNavidad1.Socio;
INSERT INTO EjNavidad1.Socio (DNI, nombre, direccion, cuenta_bancaria, fecha_pago, idCuota_FK, idSede_FK) VALUES ('12345678D', 'Marcos Pérez', 'Calle Don Jaime', 'ES123456789012345678', '2024-12-23', 1, 1);
INSERT INTO EjNavidad1.Socio (DNI, nombre, direccion, cuenta_bancaria, fecha_pago, idCuota_FK, idSede_FK) VALUES ('12345678E', 'Pablo Fuentes', 'Paseo Mayor', 'ES123456789012345679', '2024-12-31', 2, 2);
INSERT INTO EjNavidad1.Socio (DNI, nombre, direccion, cuenta_bancaria, fecha_pago, idCuota_FK, idSede_FK) VALUES ('12345678F', 'Guillermo Torres', 'Avenida Valencia', 'ES123456789012345670', '2024-11-15', 3, 3);

SELECT * FROM EjNavidad1.Voluntario;
INSERT INTO EjNavidad1.Voluntario (DNI, nombre, direccion, idSede_FK) VALUES ('1234678A', 'María Santos', 'Calle Mayor', 1);
INSERT INTO EjNavidad1.Voluntario (DNI, nombre, direccion, idSede_FK) VALUES ('1234678B', 'Lucas Sánchez', 'Calle Gracia', 2);
INSERT INTO EjNavidad1.Voluntario (DNI, nombre, direccion, idSede_FK) VALUES ('1234678C', 'Mario Jiménez', 'Calle Alfonso', 3);
INSERT INTO EjNavidad1.Voluntario (DNI, nombre, direccion, idSede_FK) VALUES ('1234678G', 'Marta Rubio', 'Avenida Goya', 1);
INSERT INTO EjNavidad1.Voluntario (DNI, nombre, direccion, idSede_FK) VALUES ('1234678H', 'Fernando Marín', 'Avenida Madrid', 2);
INSERT INTO EjNavidad1.Voluntario (DNI, nombre, direccion, idSede_FK) VALUES ('1234678I', 'Roberto Cebrián', 'Avenida Navarra', 3);

/* Obtener el nombre, apellidos y la sede a la que pertenece cada socio. */
SELECT SO.nombre, SO.idSede_FK, SE.domicilio
FROM EjNavidad1.Socio AS SO, EjNavidad1.Sede AS SE
WHERE SO.idSede_FK = SE.idSede;

/* Listar los envíos organizados por cada sede, mostrando el código del envío, la ciudad de la sede organizadora y la fecha de salida. */
SELECT E.idEnvio, SE.domicilio, E.fecha
FROM EjNavidad1.Envio AS E, EjNavidad1.Sede AS SE, EjNavidad1.Envio_Sede AS ES
WHERE ES.idEnvio_FK = E.idEnvio AND ES.idSede_FK = SE.idSede;

/* Mostrar el nombre, apellidos, profesión y disponibilidad de los voluntarios sanitarios disponibles actualmente para misiones humanitarias. */
SELECT V.nombre, PS.profesion, PS.disponibilidad 
FROM EjNavidad1.Voluntario AS V, EjNavidad1.Personal_Sanitario AS PS
WHERE PS.idVoluntario_FK = V.DNI AND PS.disponibilidad = 1;