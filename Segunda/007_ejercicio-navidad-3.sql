SELECT * FROM EjNavidad3.Acta_Congreso;
INSERT INTO EjNavidad3.Acta_Congreso (congreso, edicion, ciudad, fechaInicio, fechaFin, pais, anyoInicio, idTipo_Congreso_FK, idFrecuencia_Celebracion_FK, idArticulo_FK) VALUES ('Congreso1', 6, 'Zaragoza', '2024-12-14', '2024-12-15', 'España', '1976', 1, 1, 4);
INSERT INTO EjNavidad3.Acta_Congreso (congreso, edicion, ciudad, fechaInicio, fechaFin, pais, anyoInicio, idTipo_Congreso_FK, idFrecuencia_Celebracion_FK, idArticulo_FK) VALUES ('Congreso2', 8, 'París', '2024-02-17', '2024-02-18', 'Francia', '1998', 2, 2, 5);
INSERT INTO EjNavidad3.Acta_Congreso (congreso, edicion, ciudad, fechaInicio, fechaFin, pais, anyoInicio, idTipo_Congreso_FK, idFrecuencia_Celebracion_FK, idArticulo_FK) VALUES ('Congreso3', 14, 'Madrid', '2024-11-11', '2024-10-05', 'España', '2003', 1, 3, 6);

SELECT * FROM EjNavidad3.Articulo;
INSERT INTO EjNavidad3.Articulo (titulo, correo_contacto) VALUES ('Articulo1', 'articulo1@gmail.com');
INSERT INTO EjNavidad3.Articulo (titulo, correo_contacto) VALUES ('Articulo2', 'articulo2@gmail.com');
INSERT INTO EjNavidad3.Articulo (titulo, correo_contacto) VALUES ('Articulo3', 'articulo3@gmail.com');
INSERT INTO EjNavidad3.Articulo (titulo, correo_contacto) VALUES ('Articulo4', 'articulo4@gmail.com');
INSERT INTO EjNavidad3.Articulo (titulo, correo_contacto) VALUES ('Articulo5', 'articulo5@gmail.com');
INSERT INTO EjNavidad3.Articulo (titulo, correo_contacto) VALUES ('Articulo6', 'articulo6@gmail.com');
INSERT INTO EjNavidad3.Articulo (titulo, correo_contacto) VALUES ('Articulo7', 'articulo7@gmail.com');
INSERT INTO EjNavidad3.Articulo (titulo, correo_contacto) VALUES ('Articulo8', 'articulo8@gmail.com');
INSERT INTO EjNavidad3.Articulo (titulo, correo_contacto) VALUES ('Articulo9', 'articulo9@gmail.com');

SELECT * FROM EjNavidad3.Articulo_Investigador;
INSERT INTO EjNavidad3.Articulo_Investigador (idInvestigador_FK, idArticulo_FK) VALUES (1, 1);
INSERT INTO EjNavidad3.Articulo_Investigador (idInvestigador_FK, idArticulo_FK) VALUES (2, 2);
INSERT INTO EjNavidad3.Articulo_Investigador (idInvestigador_FK, idArticulo_FK) VALUES (3, 3);

SELECT * FROM EjNavidad3.Copia;
INSERT INTO EjNavidad3.Copia (idUbicacion_Copia_FK, idArticulo_FK) VALUES (1, 2);
INSERT INTO EjNavidad3.Copia (idUbicacion_Copia_FK, idArticulo_FK) VALUES (2, 4);
INSERT INTO EjNavidad3.Copia (idUbicacion_Copia_FK, idArticulo_FK) VALUES (1, 6);

SELECT * FROM EjNavidad3.Frecuencia;
INSERT INTO EjNavidad3.Frecuencia (tipo) VALUES ('Semanal');
INSERT INTO EjNavidad3.Frecuencia (tipo) VALUES ('Mensual');
INSERT INTO EjNavidad3.Frecuencia (tipo) VALUES ('Semestral');
INSERT INTO EjNavidad3.Frecuencia (tipo) VALUES ('Trimestral');

SELECT * FROM EjNavidad3.Frecuencia_Celebracion;
INSERT INTO EjNavidad3.Frecuencia_Celebracion (tipo) VALUES ('Anual');
INSERT INTO EjNavidad3.Frecuencia_Celebracion (tipo) VALUES ('Trimestral');
INSERT INTO EjNavidad3.Frecuencia_Celebracion (tipo) VALUES ('Semestral');
INSERT INTO EjNavidad3.Frecuencia_Celebracion (tipo) VALUES ('Mensual');

SELECT * FROM EjNavidad3.Informe_Tecnico;
INSERT INTO EjNavidad3.Informe_Tecnico (centro, anyo, mes, idArticulo_FK) VALUES ('Centro1', 2024, 12, 1);
INSERT INTO EjNavidad3.Informe_Tecnico (centro, anyo, mes, idArticulo_FK) VALUES ('Centro2', 2024, 9, 2);
INSERT INTO EjNavidad3.Informe_Tecnico (centro, anyo, mes, idArticulo_FK) VALUES ('Centro3', 2024, 10, 3);

SELECT * FROM EjNavidad3.Investigador;
INSERT INTO EjNavidad3.Investigador (nombre, centro, correo) VALUES ('Pedro Jiménez', 'Centro1', 'pedrojimenez@gmail.com');
INSERT INTO EjNavidad3.Investigador (nombre, centro, correo) VALUES ('Marcos Pérez', 'Centro2', 'marcosperez@gmail.com');
INSERT INTO EjNavidad3.Investigador (nombre, centro, correo) VALUES ('Paula Martínez', 'Centro3', 'paulamartinez@gmail.com');

SELECT * FROM EjNavidad3.Investigador_Tema;
INSERT INTO EjNavidad3.Investigador_Tema (idInvestigador_FK, idTema_FK) VALUES (1, 1);
INSERT INTO EjNavidad3.Investigador_Tema (idInvestigador_FK, idTema_FK) VALUES (2, 2);
INSERT INTO EjNavidad3.Investigador_Tema (idInvestigador_FK, idTema_FK) VALUES (3, 3);

SELECT * FROM EjNavidad3.Palabra_Clave;
INSERT INTO EjNavidad3.Palabra_Clave (palabra) VALUES ('Botánica');
INSERT INTO EjNavidad3.Palabra_Clave (palabra) VALUES ('Paleolítico');
INSERT INTO EjNavidad3.Palabra_Clave (palabra) VALUES ('Política');

SELECT * FROM EjNavidad3.Palabras_Articulo;
INSERT INTO EjNavidad3.Palabras_Articulo (idArticulo_FK, idPalabra_Clave_FK) VALUES (1, 1);
INSERT INTO EjNavidad3.Palabras_Articulo (idArticulo_FK, idPalabra_Clave_FK) VALUES (2, 2);
INSERT INTO EjNavidad3.Palabras_Articulo (idArticulo_FK, idPalabra_Clave_FK) VALUES (3, 3);

SELECT * FROM EjNavidad3.Revista_Cientifica;
INSERT INTO EjNavidad3.Revista_Cientifica (nombre, editor, paginaInicio, paginaFin, anyoPublicacion, anyo, idFrecuencia_FK, idArticulo_FK) VALUES ('Revista1', 'Editor1', 512, 517, 2024, 2012, 3, 4);
INSERT INTO EjNavidad3.Revista_Cientifica (nombre, editor, paginaInicio, paginaFin, anyoPublicacion, anyo, idFrecuencia_FK, idArticulo_FK) VALUES ('Revista2', 'Editor2', 15, 16, 2024, 2023, 2, 3);
INSERT INTO EjNavidad3.Revista_Cientifica (nombre, editor, paginaInicio, paginaFin, anyoPublicacion, anyo, idFrecuencia_FK, idArticulo_FK) VALUES ('Revista3', 'Editor3', 20, 27, 2024, 2021, 1, 2);

SELECT * FROM EjNavidad3.Tema;
INSERT INTO EjNavidad3.Tema (nombre) VALUES ('Botánica');
INSERT INTO EjNavidad3.Tema (nombre) VALUES ('Paleolítico');
INSERT INTO EjNavidad3.Tema (nombre) VALUES ('Política');

SELECT * FROM EjNavidad3.Tema_Revista;
INSERT INTO EjNavidad3.Tema_Revista (nombre) VALUES ('Botánica');
INSERT INTO EjNavidad3.Tema_Revista (nombre) VALUES ('Paleolítico');
INSERT INTO EjNavidad3.Tema_Revista (nombre) VALUES ('Dinosaurios');

SELECT * FROM EjNavidad3.Tema_RevistaCient;
INSERT INTO EjNavidad3.Tema_RevistaCient (idTema_Revista, idRevista_Cientifica_FK) VALUES (1, 1);
INSERT INTO EjNavidad3.Tema_RevistaCient (idTema_Revista, idRevista_Cientifica_FK) VALUES (2, 2);
INSERT INTO EjNavidad3.Tema_RevistaCient (idTema_Revista, idRevista_Cientifica_FK) VALUES (3, 3);

SELECT * FROM EjNavidad3.Tipo_Congreso;
INSERT INTO EjNavidad3.Tipo_Congreso (nombre) VALUES ('Nacional');
INSERT INTO EjNavidad3.Tipo_Congreso (nombre) VALUES ('Internacional');

SELECT * FROM EjNavidad3.Ubicacion_Copia;
INSERT INTO EjNavidad3.Ubicacion_Copia (lugar) VALUES ('Estantería Laboratorio');
INSERT INTO EjNavidad3.Ubicacion_Copia (lugar) VALUES ('Despacho');

/* Mostrar el título de los artículos presentados en congresos internacionales, indicando el nombre del congreso, 
la ciudad y el país donde se celebró, así como las fechas de inicio y finalización. */
SELECT A.titulo, TC.nombre, AC.congreso, AC.ciudad, AC.pais, AC.fechaInicio, AC.fechaFin
FROM EjNavidad3.Articulo AS A, EjNavidad3.Tipo_Congreso AS TC, EjNavidad3.Acta_Congreso AS AC
WHERE A.idArticulo = AC.idArticulo_FK AND TC.idTipo_Congreso = AC.idTipo_Congreso_FK AND TC.nombre = 'Internacional';

/* Listar los títulos de los artículos publicados en revistas científicas, el nombre de la revista, 
el número de la revista en que aparecieron, las páginas ocupadas y el año de publicación. */
SELECT A.titulo, RC.nombre, RC.idRevista_Cientifica, RC.paginaInicio, RC.paginaFin, RC.anyoPublicacion
FROM EjNavidad3.Articulo AS A, EjNavidad3.Revista_Cientifica AS RC
WHERE A.idArticulo = RC.idArticulo_FK;