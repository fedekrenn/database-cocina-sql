/* ----- Insersión de datos ----- */

-- Categorías para proveedores
INSERT INTO detalle_categoria (nombre)
VALUES
    ('Especias y Condimentos'),
    ('Pescado'),
    ('Carnes rojas'),
    ('Carnes blancas'),
    ('Lácteos'),
    ('Verduras'),
    ('Panes y repostería'),
    ('Bebidas'),
    ('Pastas y arroz'),
    ('Enlatados');
   
-- Especialidades
INSERT INTO detalle_especialidad (nombre)
VALUES
	('Cocina Mexicana'),
    ('Cocina Francesa'),
    ('Cocina Asiática'),
    ('Cocina Italiana'),
    ('Cocina Mediterránea');

-- Restaurantes
INSERT INTO restaurante (nombre, direccion, clasificacion) 
VALUES
    ('La Trattoria', 'Calle de la Rosa 123', 4.2),
    ('El Bistró Parisien', 'Avenida de los Arcos 456', 4.5),
    ('Ristorante Bella Italia', 'Plaza del Sol 789', 3.8),
    ('La Casa del Sabor', 'Calle Principal 234', 4),
    ('The Garden Grill', 'Avenida de las Flores 567', 4.7),
    ('Sabor Mexicano', 'Calle de la Luna 890', 3.5),
    ('Le Petit Café', 'Calle de los Sueños 123', 4.8),
    ('Taste of India', 'Avenida del Aroma 456', 3.9),
    ('Mediterranean Delights', 'Paseo de las Palmas 789', 4.1),
    ('Sushi World', 'Calle del Pescador 234', 4.4),
    ('La Pizzeria Italiana', 'Avenida del Gusto 567', 4.6),
    ('Burger Haven', 'Calle de las Hamburguesas 890', 3.7),
    ('Thai Spice', 'Avenida de los Sabores 123', 4.3),
    ('Steakhouse Grill', 'Calle de las Carnes 456', 4),
    ('Fusion Flavors', 'Avenida del Sabor 789', 3.6);

-- Cocineros
INSERT INTO cocinero (dni, nombre, apellido, fecha_ingreso, id_especialidad, id_restaurante)
VALUES
    (36706445, 'Juan', 'González', '2010-05-15', 4, 1),
    (17001982, 'Ana', 'López', '2018-03-20', 2, 2),
    (32145678, 'Carlos', 'Martínez', '2020-07-10', 1, 3),
    (23444000, 'Luisa', 'Hernández', '2012-12-05', 3, 4),
    (38982123, 'Maria', 'Rodríguez', '1999-09-25', 5, 5),
    (15883228, 'Pedro', 'Sánchez', '2021-02-18', 1, 6),
    (28992882, 'Sofía', 'Gómez', '2020-11-30', 2, 7),
    (99229129, 'Andrés', 'Pérez', '2017-04-15', 4, 8),
    (890123456, 'Laura', 'Fernández', '2022-06-28', 3, 9),
    (453219876, 'Eduardo', 'Vargas', '2009-08-22', 5, 10),
    (254321987, 'Isabel', 'Torres', '2020-10-12', 1, 11),
    (987654321, 'Javier', 'Díaz', '2003-03-03', 2, 12),
    (321987654, 'Carmen', 'Ruiz', '2015-07-08', 4, 13),
    (456789123, 'Lorenzo', 'Molina', '2017-01-24', 5, 14),
    (123456789, 'Rosa', 'Jiménez', '2023-09-14', 3, 15);

-- Recetas
INSERT INTO receta (nombre, descripcion, dificultad, tiempo, dni_cocinero)
VALUES
    ('Lasaña de Carne', 'Deliciosa lasaña con carne molida, salsa de tomate y queso', 7, 60, 36706445),
    ('Coq au Vin', 'Clásico francés de pollo cocido en vino tinto con champiñones y cebollas', 9, 90, 17001982),
    ('Tacos al Pastor', 'Tacos mexicanos con carne de cerdo adobada, piña y cebolla', 4, 30, 32145678),
    ('Sushi de Salmón', 'Rolls de sushi con salmón fresco, aguacate y arroz', 8, 45, 23444000),
    ('Paella Valenciana', 'Plato español de arroz con mariscos, pollo y azafrán', 6, 60, 38982123),
    ('Guacamole', 'Dip de aguacate, tomate, cebolla y cilantro', 3, 15, 15883228),
    ('Croissant', 'Clásico pastelito francés hojaldrado', 10, 120, 28992882),
    ('Tiramisú', 'Postre italiano de café y mascarpone', 5, 45, 99229129),
    ('Sushi de Salmón', 'Rolls de sushi con salmón fresco, aguacate y arroz', 8, 45, 890123456),
    ('Moussaka', 'Plato griego de berenjena, carne picada y bechamel', 6, 75, 453219876),
    ('Chiles en Nogada', 'Plato mexicano de chiles poblanos rellenos de picadillo', 9, 90, 254321987),
    ('Coq au Vin', 'Clásico francés de pollo cocido en vino tinto con champiñones y cebollas', 9, 90, 987654321),
    ('Bruschetta', 'Tostadas italianas con tomate, albahaca y aceite de oliva', 3, 20, 321987654),
    ('Tarta de Manzana', 'Deliciosa tarta de manzana con canela y azúcar', 5, 50, 123456789),
    ('Pizza de palmitos', 'Deliciosa pizza de palmitos con salsa de tomate y queso derretido', 4, 15, 123456789);

-- Proveedores
INSERT INTO proveedor
VALUES
    (987654, 'Juan', 'Gómez', 'Calle A 123', 555123456, 1),
    (876543, 'Ana', 'López', 'Avenida B 456', 555234567, 2),
    (789012, 'Carlos', 'Martínez', 'Calle C 789', 555345678, 3),
    (654321, 'Luisa', 'Hernández', 'Avenida D 101', 555456789, 6),
    (567890, 'Maria', 'Rodríguez', 'Calle E 202', 555567890, 10),
    (678901, 'Pedro', 'Sánchez', 'Avenida F 303', 555678901, 2),
    (890123, 'Sofía', 'Gómez', 'Calle G 404', 555789012, 7),
    (901234, 'Andrés', 'Pérez', 'Avenida H 505', 555890123, 6),
    (345678, 'Laura', 'Fernández', 'Calle I 606', 555901234, 1),
    (456789, 'Eduardo', 'Vargas', 'Avenida J 707', 555012345, 3),
    (234567, 'Isabel', 'Torres', 'Calle K 808', 555123456, 10),
    (543210, 'Javier', 'Díaz', 'Avenida L 909', 555234567, 9),
    (876210, 'Carmen', 'Ruiz', 'Calle M 1010', 555345678, 6),
    (678120, 'Lorenzo', 'Molina', 'Avenida N 1111', 555456789, 9),
    (567801, 'Rosa', 'Jiménez', 'Calle O 1212', 555567890, 4);

-- Ingredientes
INSERT INTO ingrediente (precio, nombre, codigo_proveedor)
VALUES
    (1327, 'Harina de Trigo', 987654),
    (6710, 'Aceite de Oliva Extra Virgen', 890123),
    (6999.99, 'Bola de lomo', 789012),
    (8500, 'Salmón Ahumado', 901234),
    (500, 'Tomates', 567890),
    (2900, 'Levadura', 678901),
    (300, 'Cebolla', 567890),
    (2590.99, 'Vino Tinto', 456789),
    (299.50, 'Ajo', 567890),
    (4199.49, 'Queso Parmesano', 987654),
    (1199.50, 'Fideos', 678120),
    (2400.99, 'Pimientos Rojos', 567890),
    (4000, 'Pollo', 789012),
    (670, 'Cebolla de verdeo', 678120),
    (999.99, 'Calabacines', 567890);

-- Relaciones de ingredientes en recetas
INSERT INTO receta_ingrediente (id_receta, id_ingrediente, cantidad)
VALUES
    (1, 1, 100), (1, 2, 50), (1, 3, 200), 
    (1, 4, 200), (2, 4, 150), (2, 5, 30), 
    (2, 6, 5), (3, 7, 80), (3, 8, 10), 
    (3, 9, 120), (4, 10, 25), (4, 11, 40), 
    (4, 12, 70), (5, 13, 70), (5, 14, 100), 
    (5, 15, 200), (5, 3, 200), (5, 1, 200),
    (6, 1, 120), (6, 5, 40), (6, 10, 80),
    (7, 3, 180), (7, 7, 90), (7, 14, 25),
    (8, 8, 70), (8, 11, 30), (8, 15, 150),
    (9, 2, 60), (9, 6, 15), (9, 9, 100),
    (10, 4, 130), (10, 12, 45), (10, 13, 200),
    (11, 3, 80), (11, 5, 25), (11, 8, 60),
    (12, 2, 40), (12, 7, 70), (12, 14, 120),
    (13, 1, 100), (13, 11, 35), (13, 13, 180),
    (14, 9, 55), (14, 12, 25), (14, 15, 90),
    (15, 4, 75), (15, 6, 10), (15, 10, 110);



/* ----- Sentencias TCL ----- */

-- 1. Eliminación de registros en la tabla Receta
START TRANSACTION;
DELETE FROM receta WHERE id_receta in (1, 2, 3, 4, 5); -- Eliminamos 5 registros

-- SELECT * FROM receta;
ROLLBACK; -- Volver atrás con la transacción
COMMIT; -- Confirmar la operación
-- SELECT * FROM receta;

-- 2. Inserción de nuevos registros en la tabla Proveedor
START TRANSACTION;
INSERT INTO proveedor
VALUES
    (768543, 'Raúl', 'Gutiérrez', 'Calle P 1313', 555234567, 5),
    (234568, 'Mónica', 'Santos', 'Avenida Q 1414', 555345678, 8),
    (992232, 'Martín', 'Luna', 'Calle R 1515', 555456789, 4),
    (123123, 'Natalia', 'Reyes', 'Avenida S 1616', 555567890, 9);
SAVEPOINT despues_de_insertar_4;

INSERT INTO proveedor (codigo, nombre, apellido, direccion, telefono, id_categoria)
VALUES
    (992845, 'Óscar', 'Morales', 'Calle T 1717', 555678901, 1),
    (293454, 'Gloria', 'Ramírez', 'Calle U 1818', 555789012, 7),
    (123456, 'Roberto', 'López', 'Avenida V 1919', 555890123, 3),
    (923456, 'Cecilia', 'García', 'Calle W 2020', 555901234, 6);
SAVEPOINT despues_de_insertar_8;

-- SELECT * FROM proveedor;
-- ROLLBACK TO despues_de_insertar_4;
-- ROLLBACK TO despues_de_insertar_8;
ROLLBACK;
-- RELEASE SAVEPOINT despues_de_insertar_4;
COMMIT;