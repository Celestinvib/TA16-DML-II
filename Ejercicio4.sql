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
