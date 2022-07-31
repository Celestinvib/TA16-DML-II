USE Ejercicio03;

/* 1.1 */
SELECT nombre FROM Articulos;

/* 1.2 */
SELECT nombre, precio FROM Articulos;

/* 1.3 */
SELECT precio FROM Articulos WHERE precio <= 200;

/* 1.4 */
SELECT precio FROM Articulos WHERE precio >= 60 AND precio <= 200;

/* 1.5 */
SELECT precio * 166.386 FROM Articulos;

/* 1.6 */
SELECT AVG(precio) FROM Articulos;

/* 1.7 */
SELECT AVG(precio) FROM Articulos WHERE fabricante = 2;

/* 1.8 */
SELECT count(precio) FROM Articulos WHERE precio >= 180;

/* 1.9 */
(SELECT nombre, precio FROM Articulos ORDER BY precio DESC) ORDER BY nombre ASC;

/* 1.10 */
SELECT Articulos.*, Fabricantes.* FROM Articulos INNER JOIN Fabricantes ON Articulos.fabricante=Fabricantes.codigo;

/* 1.11 */
SELECT Articulos.nombre, Articulos.precio, Fabricantes.nombre FROM Articulos INNER JOIN Fabricantes ON Articulos.fabricante=Fabricantes.codigo;

/* 1.12 */
SELECT avg(Articulos.precio), Articulos.fabricante FROM Articulos INNER JOIN Fabricantes ON Articulos.fabricante = Fabricantes.codigo GROUP BY Fabricantes.codigo;

/* 1.13 */
SELECT avg(Articulos.precio), Fabricantes.nombre FROM Articulos INNER JOIN Fabricantes ON Articulos.fabricante = Fabricantes.codigo GROUP BY Fabricantes.codigo;

/* 1.14 */
SELECT Fabricantes.nombre FROM Fabricantes INNER JOIN Articulos ON Fabricantes.codigo = Articulos.fabricante WHERE Articulos.precio >= 150;

/* 1.15 */
SELECT nombre, precio FROM Articulos WHERE precio IN (SELECT min(precio) FROM Articulos)

/* 1.16 */
/* ..... */

/* 1.17 */
INSERT INTO Articulos (nombre, precio, fabricante) VALUES ('Altavoces', 70, 2);

/* 1.18 */
UPDATE Articulos SET nombre = 'Impresora Laser' WHERE codigo = '8';

/* 1.19 */
UPDATE Articulos SET precio = precio * 0.9;

/* 1.20 */
UPDATE Articulos SET precio = precio - 10 WHERE precio >= 120;