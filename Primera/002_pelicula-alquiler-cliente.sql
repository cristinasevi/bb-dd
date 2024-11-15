SELECT * FROM prueba.Cliente;

INSERT INTO prueba.Cliente (Nombre, Edad, Direccion) VALUES ('Álvaro', 20, 'Calle de las Flores');
INSERT INTO prueba.Cliente (Nombre, Edad, Direccion) VALUES ('Laura', 32, 'Calle de los Rosales');

SELECT * FROM prueba.Pelicula;

INSERT INTO prueba.Pelicula (Nombre, Anyo, Valoracion) VALUES ('El padrino', '1969-10-07', 10 );
INSERT INTO prueba.Pelicula (Nombre, Anyo, Valoracion) VALUES ('Fast an Furious', '2001-08-24', 7);

SELECT * FROM prueba.Alquilar;

INSERT INTO prueba.Alquilar (idPelicula_FK, idCliente_FK, fecha) VALUES (2, 1, '2024-11-15');
INSERT INTO prueba.Alquilar (idPelicula_FK, idCliente_FK, fecha) VALUES (1, 2, '2024-10-15');
INSERT INTO prueba.Alquilar (idPelicula_FK, idCliente_FK, fecha) VALUES (2, 2, '2024-9-15');
INSERT INTO prueba.Alquilar (idPelicula_FK, idCliente_FK, fecha) VALUES (1, 1, '2024-9-15');

SELECT * FROM prueba.Alquilar WHERE idCliente_FK = 1;
SELECT * FROM prueba.Alquilar WHERE idCliente_FK = 1 AND fecha < '2024-10-25';

SELECT idPelicula_FK AS Pelicula, idCliente_FK AS Cliente, fecha AS FechaReserva FROM prueba.alquilar 
WHERE idCliente_FK = 1 AND fecha < '2024-10-25';

SELECT A.Nombre AS Cliente, C.Nombre AS Pelicula, B.FechaReserva FROM prueba.cliente AS A, 
(SELECT idPelicula_FK AS Pelicula, idCliente_FK AS Cliente, fecha AS FechaReserva FROM prueba.alquilar) AS B, 
prueba.Pelicula AS C WHERE A.idCliente = B.Cliente AND C.idPelicula = B.Pelicula;