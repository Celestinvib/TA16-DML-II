/*2.01*/
SELECT apellidos 
FROM empleados;

/*2.02*/
SELECT apellidos 
FROM empleados 
GROUP BY apellidos;

/*2.03*/
SELECT * 
FROM empleados 
WHERE apellidos = "Smith";

/*2.04*/
SELECT * 
FROM empleados 
WHERE apellidos = "Smith" OR apellidos = "Rogers" ;

/*2.05*/
SELECT * 
FROM empleados 
WHERE departamento = 14;

/*2.06*/
SELECT * 
FROM empleados 
WHERE departamento = 37 OR departamento = 77;

/*2.07*/
SELECT * 
FROM empleados 
WHERE apellidos LIKE 'P%';

/*2.08*/
SELECT SUM(presupuesto) 
FROM departamentos;

/*2.09*/
SELECT departamento, COUNT(DNI) AS "numero_empleados" 
FROM empleados 
GROUP BY departamento;

/*2.10*/
SELECT * 
FROM empleados,departamentos 
WHERE empleados.departamento = departamentos.codigo;

/*2.11*/
SELECT empleados.nombre, empleados.apellidos , departamentos.nombre, departamentos.presupuesto 
FROM empleados,departamentos 
WHERE empleados.departamento = departamentos.codigo;

/*2.12*/
SELECT empleados.nombre, empleados.apellidos  
FROM empleados,departamentos 
WHERE empleados.departamento = departamentos.codigo AND departamentos.presupuesto > 60000;

/*2.13*/
SELECT * FROM departamentos 
WHERE presupuesto > (SELECT AVG(presupuesto) FROM departamentos);

/*2.14*/
SELECT departamentos.nombre ,count(empleados.nombre)  AS empleados
FROM departamentos
LEFT JOIN empleados ON empleados.departamento = departamentos.codigo  
GROUP BY departamentos.nombre
HAVING empleados > 2;

/*2.15*/
INSERT INTO departamentos VALUES (11,"Calidad",40000);
INSERT INTO empleados VALUES (89267109,'Esther','Vázquez',11);

/*2.16 */
/* SET SQL_SAFE_UPDATES=0; */

UPDATE departamentos
SET presupuesto = presupuesto * 0.90;

/*2.17 */
UPDATE empleados
SET departamento  = 14
WHERE departamento = 77;

/*2.18*/
DELETE empleados 
FROM empleados 
WHERE departamento = 14;

/*2.19*/
DELETE empleados 
FROM empleados,departamentos  
WHERE empleados.departamento = departamentos.codigo AND departamentos.presupuesto > 60000;

/*2.20*/
DELETE empleados 
FROM empleados;