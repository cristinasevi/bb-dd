/* 1. Realiza una consulta que nos muestre los campos Título, FECHAPUBLICACION de todas las películas, ordenado descendentemente por el Título. */
SELECT A.Titulo, A.FECHAPUBLICACION
FROM videoclub.Peliculas AS A
ORDER BY A.Titulo DESC;

/* 2. Realiza una consulta que nos muestre los campos Título, FECHAPUBLICACION y Género de todas las películas, ordenando ascendentemente por FECHAPUBLICACION y descendentemente por Género. */
SELECT A.Titulo, A.FECHAPUBLICACION, B.NombreGenero
FROM videoclub.Peliculas AS A JOIN videoclub.Generos AS B
ON A.Genero = B.CodigoGenero
ORDER BY A.FECHAPUBLICACION ASC, B.NombreGenero DESC;

/* 3. Realiza una consulta que nos muestre los campos Título, FECHAPUBLICACION, Género y Tipo de todas las películas, ordenando ascendentemente por Tipo y Título. */
SELECT A.Titulo, A.FECHAPUBLICACION, B.NombreGenero, C.Modalidad
FROM videoclub.Peliculas AS A JOIN videoclub.Generos AS B JOIN videoclub.Tipopeliculas AS C
ON A.Genero = B.CodigoGenero AND A.TipoPelicula = C.CodigoEntrega
ORDER BY C.Modalidad ASC, A.Titulo ASC;

/* 4. Realiza una consulta que nos muestre el Título y Género de las 7 últimas películas (en orden alfabético) del género Comedia. */
SELECT A.Titulo, B.NombreGenero
FROM videoclub.Peliculas AS A JOIN videoclub.Generos AS B
ON A.Genero = B.CodigoGenero 
WHERE B.NombreGenero = 'Comedia'
ORDER BY A.Titulo ASC
LIMIT 7;

/* 5. Realiza una consulta que nos muestre todos los campos de las películas cuyo género sea Drama o Comedia, ordenadas por género. */
SELECT A.*, B.NombreGenero
FROM videoclub.Peliculas AS A JOIN videoclub.Generos AS B
ON A.Genero = B.CodigoGenero
WHERE (B.NombreGenero = 'Drama' OR B.NombreGenero = 'Comedia')
ORDER BY B.NombreGenero;

/* 6. Realiza una consulta que nos muestre todos los campos de las películas cuyo precio esté entre 15 y 16, ordenadas por título. */
SELECT A.*
FROM videoclub.Peliculas AS A
WHERE A.Precio BETWEEN 15 AND 16
ORDER BY A.Titulo;

/* 7. Realiza una consulta que nos muestre todos los campos de las películas PUBLICADAS en el año 2017. */
SELECT A.*
FROM videoclub.Peliculas AS A
WHERE YEAR(A.FechaPublicacion) = 2017;

/* 8. Realiza una consulta que nos muestre todos los campos de las películas PUBLICADAS en el mes de marzo del año 2017. */
SELECT A.*
FROM videoclub.Peliculas AS A
WHERE YEAR(A.FechaPublicacion) = 2017 AND MONTH(A.FechaPublicacion) = 3;

/* 10. Realiza una consulta que nos muestre los Títulos de películas que empiezan por M o P. */
SELECT A.Titulo
FROM videoclub.Peliculas AS A
WHERE (A.Titulo LIKE 'M%' OR A.Titulo LIKE 'P%');

/* 11. Realiza una consulta que nos muestre los Títulos de películas que acaben en la letra S. */
SELECT A.Titulo
FROM videoclub.Peliculas AS A
WHERE A.Titulo LIKE '%S';

/* 12. Realiza una consulta que nos muestre los Títulos de películas que contengan la palabra AMOR. */
SELECT A.Titulo
FROM videoclub.Peliculas AS A
WHERE A.Titulo LIKE '%AMOR';

/* 13. Realiza una consulta que nos muestre los Títulos y Géneros de películas que tengan 4 caracteres en su título. */
SELECT A.Titulo, B.NombreGenero
FROM videoclub.Peliculas AS A JOIN videoclub.Generos AS B
ON A.Genero = B.CodigoGenero
WHERE LENGTH(A.Titulo) = 4;

/* 14. Realiza una consulta que nos muestre los Títulos y Géneros de películas que tengan 4 caracteres en su título y sean de género Acción. */
SELECT A.Titulo, B.NombreGenero
FROM videoclub.Peliculas AS A JOIN videoclub.Generos AS B
ON A.Genero = B.CodigoGenero
WHERE LENGTH(A.Titulo) = 4 AND B.NombreGenero = 'Acción';

/* 20. Realiza una consulta que nos muestre los Títulos y el género de las películas cuyo género sea TERROR, COMEDIA, INFANTIL ordenadas ascendentemente por el título. */
SELECT A.Titulo, B.NombreGenero
FROM videoclub.Peliculas AS A JOIN videoclub.Generos AS B
ON A.Genero = B.CodigoGenero
WHERE (B.NombreGenero = 'TERROR' OR B.NombreGenero = 'COMEDIA' OR B.NombreGenero = 'INFANTIL')
ORDER BY A.Titulo ASC;