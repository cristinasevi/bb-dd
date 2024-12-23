SELECT * FROM EjNavidad2.Convocatoria;
INSERT INTO EjNavidad2.Convocatoria (fecha_publicacion, programa, fecha_limite, web, numBOE, fecha_resolucion, idOrganismo_FK) VALUES ('2024-06-18', 'Programa1', '2024-12-15', 'www.convocatoria1.com', '1234-2024', '2024-07-11', 1);
INSERT INTO EjNavidad2.Convocatoria (fecha_publicacion, programa, fecha_limite, web, numBOE, fecha_resolucion, idOrganismo_FK) VALUES ('2024-03-08', 'Programa2', '2024-12-17', 'www.convocatoria2.com', '1235-2024', '2024-04-04', 2);
INSERT INTO EjNavidad2.Convocatoria (fecha_publicacion, programa, fecha_limite, web, numBOE, fecha_resolucion, idOrganismo_FK) VALUES ('2024-07-13', 'Programa3', '2024-11-17', 'www.convocatoria3.com', '1236-2024', '2024-08-14', 3);

SELECT * FROM EjNavidad2.Departamento;
INSERT INTO EjNavidad2.Departamento (nombre, director) VALUES ('Departamento1', 'José María Martín');
INSERT INTO EjNavidad2.Departamento (nombre, director) VALUES ('Departamento2', 'Pedro Jiménez');
INSERT INTO EjNavidad2.Departamento (nombre, director) VALUES ('Departamento3', 'Marta Fernández');

SELECT * FROM EjNavidad2.Grupo;
INSERT INTO EjNavidad2.Grupo (nombre, idInvestigador_FK) VALUES ('Grupo1', 1);

SELECT * FROM EjNavidad2.Investigador;
INSERT INTO EjNavidad2.Investigador (nombre, areaConocimiento, idDepartamento_FK) VALUES ('Laura Marín', 'Area1', 1);
INSERT INTO EjNavidad2.Investigador (nombre, areaConocimiento, idDepartamento_FK) VALUES ('Marcos Pérez', 'Area2', 2);
INSERT INTO EjNavidad2.Investigador (nombre, areaConocimiento, idDepartamento_FK) VALUES ('Pablo Martín', 'Area3', 3);

SELECT * FROM EjNavidad2.Investigador_Grupo;
INSERT INTO EjNavidad2.Investigador_Grupo (idInvestigador_FK, idGrupo_FK) VALUES (1, 1);
INSERT INTO EjNavidad2.Investigador_Grupo (idInvestigador_FK, idGrupo_FK) VALUES (2, 1);
INSERT INTO EjNavidad2.Investigador_Grupo (idInvestigador_FK, idGrupo_FK) VALUES (3, 1);

SELECT * FROM EjNavidad2.Organismo;
INSERT INTO EjNavidad2.Organismo (nombre, direccion, codPostal, poblacion, telefono) VALUES ('Organismo1', 'Calle Mayor', 50004, 'Zaragoza', 976123456);
INSERT INTO EjNavidad2.Organismo (nombre, direccion, codPostal, poblacion, telefono) VALUES ('Organismo2', 'Avenida Grande', 28126, 'Madrid', 976123457);
INSERT INTO EjNavidad2.Organismo (nombre, direccion, codPostal, poblacion, telefono) VALUES ('Organismo3', 'Plaza España', 08001, 'Barcelona', 976123458);

SELECT * FROM EjNavidad2.Solicitud;
INSERT INTO EjNavidad2.Solicitud (tituloProyecto, importe, aprobada, duracion, fecha_inicio, fecha_fin, fecha_resolucion, fecha_presentacion, idInvestigador_FK, idConvocatoria_FK) VALUES ('Proyecto1', 200, true, 4, '2024-09-15', '2024-12-29', '2024-11-05', '2024-12-30', 1, 1);

SELECT * FROM EjNavidad2.Solicitud_Investigador;
INSERT INTO EjNavidad2.Solicitud_Investigador (horas_semana, idSolicitud_FK, idInvestigador_FK) VALUES (19, 1, 1);
INSERT INTO EjNavidad2.Solicitud_Investigador (horas_semana, idSolicitud_FK, idInvestigador_FK) VALUES (24, 1, 2);
INSERT INTO EjNavidad2.Solicitud_Investigador (horas_semana, idSolicitud_FK, idInvestigador_FK) VALUES (13, 1, 3);

/* Obtener el número de convocatoria, el programa al que pertenece, el organismo que la promueve y la fecha límite para presentar solicitudes. */
SELECT C.idConvocatoria, C.programa, O.nombre, C.fecha_limite
FROM EjNavidad2.Convocatoria AS C, EjNavidad2.Organismo AS O
WHERE C.idOrganismo_FK = O.idOrganismo;

/* Listar el número de convocatoria, el programa al que pertenece, la fecha límite de presentación, y el nombre y la población del organismo que la promueve. */
SELECT C.idConvocatoria, C.programa, C.fecha_limite, O.nombre, O.poblacion
FROM EjNavidad2.Convocatoria AS C, EjNavidad2.Organismo AS O
WHERE C.idOrganismo_FK = O.idOrganismo;

/* Mostrar el título del proyecto, el investigador principal, el importe solicitado, el programa y la fecha límite de la convocatoria, 
así como el nombre y la población del organismo que la promueve. */
SELECT S.tituloProyecto, I.nombre, S.importe, C.programa, C.fecha_limite, O.nombre, O.poblacion
FROM EjNavidad2.Solicitud AS S, EjNavidad2.Investigador AS I, EjNavidad2.Convocatoria AS C, EjNavidad2.Organismo AS O
WHERE S.idInvestigador_FK = I.idInvestigador AND S.idConvocatoria_FK = C.idConvocatoria AND C.idOrganismo_FK = O.idOrganismo;