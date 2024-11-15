SELECT * FROM prueba.Asignatura;

INSERT INTO prueba.Asignatura (Nombre, Idioma, Numero_Horas, idProfesor_FK) VALUES ('FOL', 'Ingles', 2, 1);
INSERT INTO prueba.Asignatura (Nombre, Idioma, Numero_Horas, idProfesor_FK) VALUES ('Bases de Datos', 'Espanol', 8, 1);
INSERT INTO prueba.Asignatura (Nombre, Idioma, Numero_Horas, idProfesor_FK) VALUES ('Programacion', 'Espanol', 8, 1);

UPDATE prueba.Asignatura SET Nombre='Bases de Datos', Idioma='Espanol' WHERE idAsignatura = 2;
UPDATE prueba.Asignatura SET Numero_Horas = 8 WHERE idAsignatura = 1 OR idAsignatura = 2;

DELETE FROM prueba.Asignatura WHERE idAsignatura=3;

SELECT * FROM prueba.Profesor;

INSERT INTO prueba.Profesor (Nombre, Edad, Direccion) VALUES ('Antonio', 45, 'Calle Mayor');

UPDATE prueba.asignatura SET idProfesor_FK = 1 WHERE idAsignatura >= 1 AND idAsignatura <=5;
UPDATE prueba.asignatura SET idProfesor_FK = 2 WHERE idAsignatura = 1;