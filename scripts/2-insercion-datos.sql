------------------------------------------------------
-- Insersión de datos --

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
    ('La Casa del Sabor', 'Calle Principal 234', 4.0),
    ('The Garden Grill', 'Avenida de las Flores 567', 4.7),
    ('Sabor Mexicano', 'Calle de la Luna 890', 3.5),
    ('Le Petit Café', 'Calle de los Sueños 123', 4.8),
    ('Taste of India', 'Avenida del Aroma 456', 3.9),
    ('Mediterranean Delights', 'Paseo de las Palmas 789', 4.1),
    ('Sushi World', 'Calle del Pescador 234', 4.4),
    ('La Pizzeria Italiana', 'Avenida del Gusto 567', 4.6),
    ('Burger Haven', 'Calle de las Hamburguesas 890', 3.7),
    ('Thai Spice', 'Avenida de los Sabores 123', 4.3),
    ('Steakhouse Grill', 'Calle de las Carnes 456', 4.0),
    ('Fusion Flavors', 'Avenida del Sabor 789', 3.6);

-- Cocineros
INSERT INTO cocinero (dni, nombre, apellido, fecha_nacimiento, id_especialidad, id_restaurante)
VALUES
    (36706445, 'Juan', 'González', '1980-05-15', 4, 1),
    (17001982, 'Ana', 'López', '1990-03-20', 2, 2),
    (32145678, 'Carlos', 'Martínez', '1985-07-10', 1, 3),
    (23444000, 'Luisa', 'Hernández', '1988-12-05', 3, 4),
    (38982123, 'Maria', 'Rodríguez', '1987-09-25', 5, 5),
    (15883228, 'Pedro', 'Sánchez', '1993-02-18', 1, 6),
    (28992882, 'Sofía', 'Gómez', '1995-11-30', 2, 7),
    (99229129, 'Andrés', 'Pérez', '1983-04-15', 4, 8),
    (890123456, 'Laura', 'Fernández', '1989-06-28', 3, 9),
    (453219876, 'Eduardo', 'Vargas', '1992-08-22', 5, 10),
    (254321987, 'Isabel', 'Torres', '1991-10-12', 1, 11),
    (987654321, 'Javier', 'Díaz', '1986-03-03', 2, 12),
    (321987654, 'Carmen', 'Ruiz', '1984-07-08', 4, 13),
    (456789123, 'Lorenzo', 'Molina', '1994-01-24', 5, 14),
    (123456789, 'Rosa', 'Jiménez', '1981-09-14', 3, 15);

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
    ('Tarta de Manzana', 'Deliciosa tarta de manzana con canela y azúcar', 5, 50, 456789123),
    ('Pizza de palmitos', 'Deliciosa pizza de palmitos con salsa de tomate y queso derretido', 4, 15, 123456789);

-- Proveedores
INSERT INTO proveedor (email, nombre, apellido, direccion, telefono, id_categoria)
VALUES
    ('proveedor1@email.com', 'Juan', 'Gómez', 'Calle A 123', 555123456, 1),
    ('proveedor2@email.com', 'Ana', 'López', 'Avenida B 456', 555234567, 2),
    ('proveedor3@email.com', 'Carlos', 'Martínez', 'Calle C 789', 555345678, 3),
    ('proveedor4@email.com', 'Luisa', 'Hernández', 'Avenida D 101', 555456789, 6),
    ('proveedor5@email.com', 'Maria', 'Rodríguez', 'Calle E 202', 555567890, 10),
    ('proveedor6@email.com', 'Pedro', 'Sánchez', 'Avenida F 303', 555678901, 2),
    ('proveedor7@email.com', 'Sofía', 'Gómez', 'Calle G 404', 555789012, 7),
    ('proveedor8@email.com', 'Andrés', 'Pérez', 'Avenida H 505', 555890123, 6),
    ('proveedor9@email.com', 'Laura', 'Fernández', 'Calle I 606', 555901234, 1),
    ('proveedor10@email.com', 'Eduardo', 'Vargas', 'Avenida J 707', 555012345, 3),
    ('proveedor11@email.com', 'Isabel', 'Torres', 'Calle K 808', 555123456, 10),
    ('proveedor12@email.com', 'Javier', 'Díaz', 'Avenida L 909', 555234567, 9),
    ('proveedor13@email.com', 'Carmen', 'Ruiz', 'Calle M 1010', 555345678, 6),
    ('proveedor14@email.com', 'Lorenzo', 'Molina', 'Avenida N 1111', 555456789, 9),
    ('proveedor15@email.com', 'Rosa', 'Jiménez', 'Calle O 1212', 555567890, 4);

-- Ingredientes
INSERT INTO ingrediente (cantidad, nombre, email_proveedor, id_receta)
VALUES
    (100, 'Harina de Trigo', 'proveedor1@email.com', 10),
    (50, 'Aceite de Oliva Extra Virgen', 'proveedor7@email.com', 2),
    (200, 'Carne de Res', 'proveedor3@email.com', 2),
    (150, 'Salmón Fresco', 'proveedor8@email.com', 10),
    (30, 'Tomates', 'proveedor5@email.com', 6),
    (5, 'Levadura', 'proveedor6@email.com', 6),
    (80, 'Cebolla', 'proveedor5@email.com', 7),
    (10, 'Vino Tinto', 'proveedor10@email.com', 8),
    (120, 'Ajo', 'proveedor5@email.com', 9),
    (25, 'Queso Parmesano', 'proveedor1@email.com', 1),
    (40, 'Pasta de Spaghetti', 'proveedor14@email.com', 11),
    (70, 'Pimientos Rojos', 'proveedor5@email.com', 10),
    (300, 'Pollo', 'proveedor3@email.com', 8),
    (15, 'Pasta Filo', 'proveedor14@email.com', 1),
    (180, 'Calabacines', 'proveedor5@email.com', 1);
    

-----------------------------------------------
-- Ejercicio 1 - Eliminación de registros en la tabla Ingredientes
START TRANSACTION;
DELETE FROM ingrediente WHERE id_ingrediente in (1, 2, 3, 4, 5); -- Eliminamos 5 registros

SELECT * FROM ingrediente;

ROLLBACK; -- Comentado por pedido de la consigna, descomentar para deshacer la eliminación
COMMIT; -- Confirmar la operación

-----------------------------------------------
-- Ejercicio 2 - Inserción de nuevos registros en la tabla Proveedor
START TRANSACTION;
INSERT INTO proveedor (email, nombre, apellido, direccion, telefono, id_categoria)
VALUES
    ('proveedor16@email.com', 'Raúl', 'Gutiérrez', 'Calle P 1313', 555234567, 5),
    ('proveedor17@email.com', 'Mónica', 'Santos', 'Avenida Q 1414', 555345678, 8),
    ('proveedor18@email.com', 'Martín', 'Luna', 'Calle R 1515', 555456789, 4),
    ('proveedor19@email.com', 'Natalia', 'Reyes', 'Avenida S 1616', 555567890, 9);
SAVEPOINT despues_de_insertar_4;

INSERT INTO proveedor (email, nombre, apellido, direccion, telefono, id_categoria)
VALUES
    ('proveedor20@email.com', 'Óscar', 'Morales', 'Calle T 1717', 555678901, 1),
    ('proveedor21@email.com', 'Gloria', 'Ramírez', 'Calle U 1818', 555789012, 7),
    ('proveedor22@email.com', 'Roberto', 'López', 'Avenida V 1919', 555890123, 3),
    ('proveedor23@email.com', 'Cecilia', 'García', 'Calle W 2020', 555901234, 6);
SAVEPOINT despues_de_insertar_8;

SELECT * FROM proveedor;
-- ROLLBACK TO despues_de_insertar_4;
-- ROLLBACK TO despues_de_insertar_8;
ROLLBACK;
RELEASE SAVEPOINT despues_de_insertar_4; -- elimina el SAVEPOINT
COMMIT;