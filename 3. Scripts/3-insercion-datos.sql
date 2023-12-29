/* ----- Insersión de datos ----- */

-- Categorías para proveedores
INSERT INTO detalle_categoria (nombre)
VALUES
  ('Carnes'),
  ('Enlatados'),
  ('Especies y condimentos'),
  ('Granos'),
  ('Lácteos'),
  ('Panadería'),
  ('Pastas'),
  ('Salsas'),
  ('Verduras');
   
-- Especialidades
INSERT INTO detalle_especialidad (nombre)
VALUES
	('Cocina Mexicana'),
  ('Comida Rápida'),
  ('Cocina Asiática'),
  ('Cocina Italiana'),
  ('Cocina Mediterránea'),
  ('Comida típica Argentina');

-- Restaurantes
INSERT INTO restaurante (nombre, direccion, clasificacion) 
VALUES
  ('Sabor Azteca', 'Calle de la Rosa 123', 4.2),
  ('La Cantina Picante', 'Avenida de los Arcos 456', 4.5),
  ('FastFuel Grill', 'Plaza del Sol 789', 3.8),
  ('QuickBite Express', 'Calle Principal 234', 4),
  ('Zen Wok', 'Avenida de las Flores 567', 4.7),
  ('Sushi World', 'Calle de la Luna 890', 3.5),
  ('Sakura Sushi House', 'Calle de los Sueños 123', 4.8),
  ('Bella Napoli Ristorante', 'Avenida del Aroma 456', 3.9),
  ('La Pizzeria Italiana', 'Avenida del Gusto 567', 4.6),
  ('Mediterranean Delights', 'Paseo de las Palmas 789', 4.1),
  ('Olive Grove Eats', 'Calle del Pescador 234', 4.4),
  ('Sabores de la Pampa', 'Calle de las Hamburguesas 890', 3.7),
  ('El Asador Criollo', 'Avenida de los Sabores 123', 4.3),
  ('Tango Grill House', 'Avenida del Sabor 789', 3.6);

-- Cocineros
INSERT INTO cocinero (dni, nombre, apellido, fecha_ingreso, id_especialidad, id_restaurante)
VALUES
  (36706445, 'Juan', 'González', '2010-05-15', 1, 1),
  (17001982, 'Ana', 'López', '2018-03-20', 1, 2),
  (32145678, 'John', ' McAll', '2020-07-10', 2, 3),
  (23444000, 'Denny', 'Pilstone', '2012-12-05', 2, 3),
  (38982123, 'Maria', 'Rodríguez', '1999-09-25', 2, 4),
  (15883228, 'Park', 'Jin Su', '2021-02-18', 3, 5),
  (28992882, 'Joo', 'Ming Yae', '2020-11-30', 3, 6),
  (99229129, 'Auwi', 'Sarato', '2017-04-15', 3, 7),
  (890123456, 'Marco', 'Di Lorenzo', '2022-06-28', 4, 8),
  (453219876, 'Paolo', 'Vieri', '2009-08-22', 4, 9),
  (254321987, 'Isabel', 'Torres', '2020-10-12', 5, 10),
  (987654321, 'Javier', 'Díaz', '2003-03-03', 5, 11),
  (787564312, 'Mauro', 'Toledo', '2022-08-31', 6, 12),
  (367654355, 'Lucas', 'Magnano', '2007-11-09', 6, 13),
  (177654391, 'Federico', 'Pereyra', '2011-4-13', 6, 14);

-- Recetas
INSERT INTO receta (nombre, descripcion, dificultad, tiempo, dni_cocinero)
VALUES
  ('Tacos al pastor', 'Deliciosa receta con carne de cerdo adobada, piña fresca y cebolla.', 4, 35, 36706445),
  ('Guacamole', 'Dip de aguacate, tomate, cebolla y cilantro.', 3, 15, 17001982),
  ('Enchiladas de pollo', 'Deliciosas enchiladas rellenas de pollo, bañadas en salsa de tomate y queso derretido.', 6, 45, 36706445),
  ('Hamburguesa doble bacon', 'hamburguesa doble con generosas porciones de bacon crujiente, queso derretido y lechuga fresca.', 5, 30, 32145678),
  ('Wrap de pollo', 'Wrap de pollo deliciosamente sazonado con aderezo especial, relleno de crujiente lechuga.', 3, 15, 23444000),
  ('Sándwich de ternera', 'Jugoso sándwich de ternera a la parrilla con capas de queso fundido.', 5, 20, 38982123),
  ('Hot Dogs', 'Salchichas servidas en panecillos y acompañados de salsas y toppings a elección', 3, 15, 32145678),
  ('Alitas de pollo frito', 'Alitas de pollo sazonadas, preparadas con una mezcla de especias.', 4, 40, 32145678),
  ('Macarrones con queso', 'Deliciosos macarrones bañados en una cremosa y sabrosa salsa de queso cheddar.', 3, 25, 23444000),
  ('Sushi de salmón', 'Rolls de sushi rellenos de fresco salmón, aguacate y arroz, envuelto en alga nori.', 8, 45, 15883228),
  ('Pad Thai de camarones', 'Comida tailandesa con camarones jugosos, fideos de arroz, soja y limón.', 7, 30, 28992882),
  ('Curry de pollo al estilo tailandés', 'Pollo tailandés con leche de coco, verduras frescas, hierbas aromáticas y especias exóticas.', 8, 45, 28992882),
  ('Pasta carbonara', 'Clásica pasta italiana con salsa de huevo, queso parmesano, panceta y pimienta negra.', 5, 30, 890123456),
  ('Risotto de champiñones', 'Cremoso receta preparada con arroz, champiñones, caldo, vino blanco, cebolla y queso parmesano.', 7, 40, 453219876),
  ('Pizza napolitana', 'Deliciosa opción que resalta los sabores tradicionales de la pizza italiana.', 5, 25, 890123456),
  ('Lasaña de carne', 'Un plato gratinado al horno que combina sabores y texturas para una experiencia culinaria única.', 7, 60, 453219876),
  ('Pesto de albahaca con pasta', 'Pasta con una deliciosa salsa pesto de albahaca, ajo, piñones, queso parmesano y aceite de oliva.', 4, 25, 890123456),
  ('Ensalada griega', 'Ensalada fresca y saludable inspirada en la cocina griega.', 2, 15, 987654321),
  ('Hummus con pan pita', 'Crema a base de garbanzos, tahini, ajo y limón, servido con pan pita recién horneado.', 3, 20, 254321987),
  ('Falafel', 'Bolitas de falafel crujientes por fuera y tiernas por dentro, elaboradas con garbanzos.', 4, 40, 254321987),
  ('Paella', 'Deliciosa paella española con una mezcla de sabores mediterráneos.', 7, 50, 254321987),
  ('Asado', 'Carnes argentinas que celebran la tradición de la parrilla cocidas a la perfección', 6, 70, 787564312),
  ('Empanadas criollas', 'Explosión de sabores que capturan la esencia de la cocina criolla. Perfectas para compartir en reuniones familiares', 5, 90, 787564312),
  ('Milanesa', 'Filetes de carne empanizados y luego fritos hasta obtener una textura dorada y crujiente', 3, 30, 367654355),
  ('Locro', 'Ideal para disfrutar en días fríos y expecial para festividades patrias y celebraciones familiares', 5, 120, 177654391),
  ('Provoleta', 'Provolone fundido y dorado hasta que forma una capa dorada y crujiente por fuera', 3, 15, 367654355);

-- Proveedores
INSERT INTO proveedor
VALUES
  (987654, 'Juan', 'Gómez', 'Calle A 123', 555123456, 1),
  (876543, 'Ana', 'López', 'Avenida B 456', 555234567, 1),
  (789012, 'Carlos', 'Martínez', 'Calle C 789', 555345678, 1),
  (654321, 'Luisa', 'Hernández', 'Avenida D 101', 555456789, 2),
  (567890, 'Maria', 'Rodríguez', 'Calle E 202', 555567890, 3),
  (678901, 'Pedro', 'Sánchez', 'Avenida F 303', 555678901, 3),
  (890123, 'Sofía', 'Gómez', 'Calle G 404', 555789012, 4),
  (345678, 'Laura', 'Fernández', 'Calle I 606', 555901234, 5),
  (456789, 'Eduardo', 'Vargas', 'Avenida J 707', 555012345, 5),
  (234567, 'Isabel', 'Torres', 'Calle K 808', 555123456, 6),
  (543210, 'Javier', 'Díaz', 'Avenida L 909', 555234567, 7),
  (876210, 'Carmen', 'Ruiz', 'Calle M 1010', 555345678, 8),
  (678120, 'Lorenzo', 'Molina', 'Avenida N 1111', 555456789, 9),
  (901234, 'Andrés', 'Pérez', 'Avenida H 505', 555890123, 9),
  (567801, 'Rosa', 'Jiménez', 'Calle O 1212', 555567890, 9);

-- Ingredientes
INSERT INTO ingrediente (precio, nombre, codigo_proveedor)
VALUES
  (5000, 'Carne de cerdo', 987654),
  (6999, 'Carne de ternera', 876543),
  (4999.99, 'Carne molida', 789012),
  (3099.50, 'Panceta', 987654),
  (3999, 'Pollo', 876543),
  (1299.99, 'Salchichas', 789012),
  (9999, 'Salmon', 789012),
  (2590.99, 'Camarones', 876543),
  (3990.50, 'Costilla', 987654),
  (4199.49, 'Vacío', 987654),
  (3199.50, 'Chorizo', 789012),
  (900.99, 'Pepino', 654321),
  (400, 'Aceitunas', 654321),
  (670, 'Aderezos', 567890),
  (100, 'Ajo en polvo', 678901),
  (1230, 'Chucrut', 567890),
  (100, 'Pimienta', 678901),
  (2000, 'Algas Nori', 567890),
  (1099.99, 'Tahini', 678901),
  (279.99, 'Comino', 678901),
  (99, 'Orégano', 567890),
  (999, 'Arroz', 890123),
  (599, 'Garbanzo', 890123),
  (899, 'Crema', 345678),
  (1399, 'Leche', 456789),
  (1500, 'Queso', 345678),
  (500, 'Huevo', 456789),
  (1000, 'Pan', 234567),
  (1200, 'Tortillas de maiz', 234567),
  (999, 'Harina', 234567),
  (500, 'Pan rallado', 234567),
  (2000, 'Macarrones', 543210),
  (800, 'Fideos', 543210),
  (1999.99, 'Lasaña', 543210),
  (499, 'Salsa de tomate', 876210),
  (1300, 'Wasabi', 876210),
  (200, 'Cebolla', 678120),
  (299, 'Cebolla de verdeo', 901234),
  (249.99, 'Lechuga', 567801),
  (899, 'Palta', 678120),
  (1299, 'Pimiento', 901234),
  (489.99, 'Tomate', 567801),
  (700, 'Berenjena', 678120),
  (300, 'Albahaca', 901234),
  (100, 'Ajo', 567801),
  (900, 'Champiñones', 678120),
  (189, 'Perejil', 901234),
  (400, 'Maiz', 567801),
  (560.50, 'Zapallo', 678120);

-- Relaciones de ingredientes en recetas
INSERT INTO receta_ingrediente (id_receta, id_ingrediente, cantidad)
VALUES
  (1, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE '%cerdo' LIMIT 1), 500),
  (1, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'cebolla' LIMIT 1), 100),
  (1, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimiento' LIMIT 1), 70),
  (1, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE '%verdeo' LIMIT 1), 20),
  (1, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE '%salsa de tomate%' LIMIT 1), 100),
  (1, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tortilla%' LIMIT 1), 200),
  (2, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'palta' LIMIT 1), 300),
  (2, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tomate' LIMIT 1), 200),
  (2, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE '%verdeo' LIMIT 1), 20),
  (2, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'cebolla' LIMIT 1), 100),
  (2, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 10),
  (3, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pollo' LIMIT 1), 500),
  (3, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tortilla%' LIMIT 1), 200),
  (3, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'queso' LIMIT 1), 200),
  (3, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'cebolla' LIMIT 1), 150),
  (3, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'crema' LIMIT 1), 200),
  (3, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 10),
	(4, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE '%molida' LIMIT 1), 500),
  (4, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pan' LIMIT 1), 200),
  (4, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'queso' LIMIT 1), 200),
  (4, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'panceta' LIMIT 1), 100),
  (4, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'lechuga' LIMIT 1), 100),
  (4, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tomate' LIMIT 1), 200),
  (4, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'cebolla' LIMIT 1), 150),
  (5, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pollo' LIMIT 1), 400),
  (5, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tortilla%' LIMIT 1), 200),
  (5, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'lechuga' LIMIT 1), 150),
  (5, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tomate' LIMIT 1), 200),
  (5, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'palta' LIMIT 1), 200),
  (6, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE '%ternera' LIMIT 1), 300),
  (6, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pan' LIMIT 1), 500),
  (6, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'queso' LIMIT 1), 200),
  (6, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'cebolla' LIMIT 1), 150),
  (6, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 5),
  (7, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'salchichas' LIMIT 1), 100),
  (7, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pan' LIMIT 1), 200),
  (7, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'chucrut' LIMIT 1), 30),
  (7, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'aderezos' LIMIT 1), 10),
  (8, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pollo' LIMIT 1), 500),
  (8, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 5),
  (8, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'ajo en polvo' LIMIT 1), 5),
  (9, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'macarrones' LIMIT 1), 400),
  (9, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'queso' LIMIT 1), 250),
  (9, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'leche' LIMIT 1), 500),
  (9, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 5),
  (10, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'salmón' LIMIT 1), 200),
  (10, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'palta' LIMIT 1), 50),
  (10, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'wasabi' LIMIT 1), 20),
  (10, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'algas%' LIMIT 1), 100),
  (10, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pepino' LIMIT 1), 40),
  (11, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'camarones' LIMIT 1), 200),
  (11, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'fideos' LIMIT 1), 200),
  (11, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'cebolla' LIMIT 1), 100),
  (12, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pollo' LIMIT 1), 500),
  (12, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'leche' LIMIT 1), 400),
  (12, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimiento' LIMIT 1), 100),
  (12, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'berenjena' LIMIT 1), 100),
  (12, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'albahaca' LIMIT 1), 60),
  (13, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'fideos' LIMIT 1), 400),
  (13, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'panceta' LIMIT 1), 150),
  (13, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'queso' LIMIT 1), 100),
  (13, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'huevo' LIMIT 1), 100),
  (13, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'ajo' LIMIT 1), 20),
  (13, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 5),
  (14, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'arroz' LIMIT 1), 300),
  (14, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'champi%' LIMIT 1), 250),
  (14, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'cebolla' LIMIT 1), 100),
  (14, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'queso' LIMIT 1), 100),
  (14, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'ajo' LIMIT 1), 20),
  (14, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 5),
  (15, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'harina' LIMIT 1), 500),
  (15, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tomate' LIMIT 1), 400),
  (15, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'albahaca' LIMIT 1), 10),
  (15, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'queso' LIMIT 1), 200),
  (16, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE '%molida' LIMIT 1), 500),
  (16, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'lasaña' LIMIT 1), 400),
  (16, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'cebolla' LIMIT 1), 100),
  (16, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'ajo' LIMIT 1), 40),
  (16, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tomate' LIMIT 1), 800),
  (16, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 5),
  (16, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'albahaca' LIMIT 1), 5),
  (16, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'queso' LIMIT 1), 250),
  (17, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'albahaca' LIMIT 1), 200),
  (17, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'queso' LIMIT 1), 100),
  (17, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'ajo' LIMIT 1), 5),
  (17, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'fideos' LIMIT 1), 400),
  (18, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tomate' LIMIT 1), 200),
  (18, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimiento' LIMIT 1), 100),
  (18, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'aceitunas' LIMIT 1), 50),
  (18, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'queso' LIMIT 1), 200),
  (18, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'cebolla' LIMIT 1), 100),
  (18, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'perejil' LIMIT 1), 100),
  (18, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 5),
  (19, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'garbanzo' LIMIT 1), 400),
  (19, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'ajo' LIMIT 1), 50),
  (19, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pan' LIMIT 1), 200),
  (19, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tahini' LIMIT 1), 100),
  (19, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'comino' LIMIT 1), 5),
  (20, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'garbanzo' LIMIT 1), 300),
  (20, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'cebolla' LIMIT 1), 100),
  (20, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'ajo' LIMIT 1), 50),
  (20, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'perejil' LIMIT 1), 50),
  (20, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'comino' LIMIT 1), 5),
  (20, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 5),
  (20, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'harina' LIMIT 1), 50),
  (21, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'arroz' LIMIT 1), 300),
  (21, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pollo' LIMIT 1), 200),
  (21, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tomate' LIMIT 1), 200),
  (21, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimiento' LIMIT 1), 200),
  (21, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 5),
  (22, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE '%ternera' LIMIT 1), 200),
  (22, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'costilla' LIMIT 1), 300),
  (22, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'vacío' LIMIT 1), 300),
  (22, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tomate' LIMIT 1), 100),
  (22, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'lechuga' LIMIT 1), 100),
  (23, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE '%molida' LIMIT 1), 500),
  (23, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'cebolla' LIMIT 1), 400),
  (23, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimiento' LIMIT 1), 100),
  (23, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'aceitunas' LIMIT 1), 50),
  (23, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'huevo' LIMIT 1), 200),
  (23, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 50),
  (24, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE '%ternera' LIMIT 1), 500),
  (24, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'harina' LIMIT 1), 300),
  (24, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'huevo' LIMIT 1), 200),
  (24, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE '%rallado' LIMIT 1), 400),
  (24, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 5),
  (25, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'maiz' LIMIT 1), 100),
  (25, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'garbanzo' LIMIT 1), 100),
  (25, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'zapallo' LIMIT 1), 500),
  (25, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'chorizo' LIMIT 1), 400),
  (25, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'cebolla' LIMIT 1), 100),
  (25, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'ajo' LIMIT 1), 50),
  (25, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'panceta' LIMIT 1), 100),
  (25, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 5),
  (26, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'queso' LIMIT 1), 300),
  (26, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'tomate' LIMIT 1), 100),
  (26, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimiento' LIMIT 1), 100),
  (26, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'orégano' LIMIT 1), 5),
  (26, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pimienta' LIMIT 1), 5),
  (26, (SELECT id_ingrediente FROM ingrediente WHERE nombre LIKE 'pan' LIMIT 1), 200);



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

INSERT INTO proveedor
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