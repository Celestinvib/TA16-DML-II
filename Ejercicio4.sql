/*4.01*/
SELECT nombre 
FROM peliculas;

/*4.02*/
SELECT calificacionedad AS "Calificaciones_de_edad"
FROM peliculas
WHERE calificacionedad IS NOT NULL
GROUP BY calificacionedad;

/*4.03*/
SELECT nombre 
FROM peliculas
WHERE calificacionedad IS NULL;

/*4.04*/
SELECT nombre
FROM salas
WHERE pelicula IS NULL;

/* 4.05 */
SELECT Salas.nombre, Peliculas.nombre, Peliculas.calificacionEdad 
FROM Salas 
INNER JOIN Peliculas ON Salas.pelicula = Peliculas.codigo;
WHERE Salas.pelicula IS NOT NULL;

/* 4.06 */
SELECT Peliculas.nombre, Peliculas.calificacionEdad, Salas.nombre
FROM Peliculas
INNER JOIN Salas ON Peliculas.codigo = Salas.pelicula
WHERE Salas.pelicula IS NOT NULL

/* 4.07 */
Select Peliculas.nombre, Peliculas.calificacionEdad
FROM Peliculas
WHERE NOT EXISTS (SELECT NULL FROM Salas WHERE Peliculas.codigo = Salas.pelicula);