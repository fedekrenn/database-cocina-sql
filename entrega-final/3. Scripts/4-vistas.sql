/* ----- Creación de vistas ----- */

-- Datos de cocineros
CREATE OR REPLACE VIEW vw_cocineros AS
(SELECT cocinero.dni, cocinero.nombre, apellido, fecha_ingreso, detalle_especialidad.nombre as especialidad, restaurante.nombre as restaurante
FROM cocinero
JOIN detalle_especialidad
ON cocinero.id_especialidad = detalle_especialidad.id_especialidad
JOIN restaurante
ON cocinero.id_restaurante = restaurante.id_restaurante)
ORDER BY dni ;

-- Recetas más dificil que el promedio
CREATE OR REPLACE VIEW vw_recetas_dificiles AS
(SELECT nombre, descripcion, dificultad
FROM receta 
WHERE dificultad > (SELECT AVG(dificultad) FROM receta))
ORDER BY dificultad DESC;

-- Restaurantes que preparan las comidas más rapidas (menos de 30 minutos)
CREATE OR REPLACE VIEW vw_comidas_rapidas AS
(SELECT restaurante.nombre as restaurante, receta.nombre as receta, tiempo, CONCAT(cocinero.nombre, ' ', apellido) AS cocinero
FROM cocinero
JOIN restaurante
ON cocinero.id_restaurante = restaurante.id_restaurante
JOIN receta
ON cocinero.dni = receta.dni_cocinero
WHERE tiempo < 30
ORDER BY cocinero.nombre);

-- Cocineros que trabajan en los 3 mejores restaurantes
CREATE OR REPLACE VIEW vw_top_cocineros AS
(SELECT cocinero.nombre, apellido, detalle_especialidad.nombre as especialidad, restaurante.nombre AS restaurante, clasificacion as clasificacion_restaurante
FROM cocinero
JOIN detalle_especialidad
ON cocinero.id_especialidad = detalle_especialidad.id_especialidad 
JOIN restaurante
ON cocinero.id_restaurante = restaurante.id_restaurante
ORDER BY clasificacion DESC
LIMIT 3);

-- Recetas y cantidades de ingredientes
CREATE OR REPLACE VIEW vw_recetas_ingredientes AS
(SELECT receta.nombre as receta, ingrediente.nombre as ingrediente, concat(cantidad, ' g.') as cantidad
FROM receta_ingrediente
JOIN receta
ON receta_ingrediente.id_receta = receta.id_receta
JOIN ingrediente
ON receta_ingrediente.id_ingrediente = ingrediente.id_ingrediente
ORDER BY receta.nombre);

/* ----- Pruebas ----- */
-- SELECT * FROM vw_cocineros;
-- SELECT * FROM vw_recetas_dificiles;
-- SELECT * FROM vw_comidas_rapidas;
-- SELECT * FROM vw_top_cocineros;
-- SELECT * FROM vw_recetas_ingredientes;