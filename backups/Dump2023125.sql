-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: db_cocina_coder
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `cocinero`
--

LOCK TABLES `cocinero` WRITE;
/*!40000 ALTER TABLE `cocinero` DISABLE KEYS */;
INSERT INTO `cocinero` VALUES (15883228,'Pedro','Sánchez','1993-02-18',1,6),(17001900,'Erica','Krenn','1964-10-09',4,2),(17001982,'Ana','López','1990-03-20',2,2),(23444000,'Luisa','Hernández','1988-12-05',3,4),(28992882,'Sofía','Gómez','1995-11-30',2,7),(32145678,'Carlos','Martínez','1985-07-10',1,3),(36706445,'Juan','González','1980-05-15',4,1),(38982123,'Maria','Rodríguez','1987-09-25',5,5),(99229129,'Andrés','Pérez','1983-04-15',4,8),(123456789,'Rosa','Jiménez','1981-09-14',3,15),(254321987,'Isabel','Torres','1991-10-12',1,11),(321987654,'Carmen','Ruiz','1984-07-08',4,13),(453219876,'Eduardo','Vargas','1992-08-22',5,10),(456789123,'Lorenzo','Molina','1994-01-24',5,14),(890123456,'Laura','Fernández','1989-06-28',3,9),(987654321,'Javier','Díaz','1986-03-03',2,12);
/*!40000 ALTER TABLE `cocinero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle_categoria`
--

LOCK TABLES `detalle_categoria` WRITE;
/*!40000 ALTER TABLE `detalle_categoria` DISABLE KEYS */;
INSERT INTO `detalle_categoria` VALUES (1,'Especias y Condimentos'),(2,'Pescado'),(3,'Carnes rojas'),(4,'Carnes blancas'),(5,'Lácteos'),(6,'Verduras'),(7,'Panes y repostería'),(8,'Bebidas'),(9,'Pastas y arroz'),(10,'Enlatados');
/*!40000 ALTER TABLE `detalle_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle_especialidad`
--

LOCK TABLES `detalle_especialidad` WRITE;
/*!40000 ALTER TABLE `detalle_especialidad` DISABLE KEYS */;
INSERT INTO `detalle_especialidad` VALUES (1,'Cocina Mexicana'),(2,'Cocina Francesa'),(3,'Cocina Asiática'),(4,'Cocina Italiana'),(5,'Cocina Mediterránea');
/*!40000 ALTER TABLE `detalle_especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ingrediente`
--

LOCK TABLES `ingrediente` WRITE;
/*!40000 ALTER TABLE `ingrediente` DISABLE KEYS */;
INSERT INTO `ingrediente` VALUES (1,100,'Harina de Trigo','proveedor1@email.com',10),(2,50,'Aceite de Oliva Extra Virgen','proveedor7@email.com',2),(3,200,'Carne de Res','proveedor3@email.com',2),(4,150,'Salmón Fresco','proveedor8@email.com',10),(5,30,'Tomates','proveedor5@email.com',6),(6,5,'Levadura','proveedor6@email.com',6),(7,80,'Cebolla','proveedor5@email.com',7),(8,10,'Vino Tinto','proveedor10@email.com',8),(9,120,'Ajo','proveedor5@email.com',9),(10,25,'Queso Parmesano','proveedor1@email.com',1),(11,40,'Pasta de Spaghetti','proveedor14@email.com',11),(12,70,'Pimientos Rojos','proveedor5@email.com',10),(13,300,'Pollo','proveedor3@email.com',8),(14,15,'Pasta Filo','proveedor14@email.com',1),(15,180,'Calabacines','proveedor5@email.com',1);
/*!40000 ALTER TABLE `ingrediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_cocinero`
--

LOCK TABLES `log_cocinero` WRITE;
/*!40000 ALTER TABLE `log_cocinero` DISABLE KEYS */;
INSERT INTO `log_cocinero` VALUES (1,'INSERT','root@localhost','2023-12-05','13:10:30');
/*!40000 ALTER TABLE `log_cocinero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_receta`
--

LOCK TABLES `log_receta` WRITE;
/*!40000 ALTER TABLE `log_receta` DISABLE KEYS */;
INSERT INTO `log_receta` VALUES (1,'UPDATE','root@localhost','2023-12-05','13:10:30');
/*!40000 ALTER TABLE `log_receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES ('proveedor10@email.com','Eduardo','Vargas','Avenida J 707',555012345,3),('proveedor11@email.com','Isabel','Torres','Calle K 808',555123456,10),('proveedor12@email.com','Javier','Díaz','Avenida L 909',555234567,9),('proveedor13@email.com','Carmen','Ruiz','Calle M 1010',555345678,6),('proveedor14@email.com','Lorenzo','Molina','Avenida N 1111',555456789,9),('proveedor15@email.com','Rosa','Jiménez','Calle O 1212',555567890,4),('proveedor1@email.com','Juan','Gómez','Calle A 123',555123456,1),('proveedor2@email.com','Ana','López','Avenida B 456',555234567,2),('proveedor3@email.com','Carlos','Martínez','Calle C 789',555345678,3),('proveedor4@email.com','Luisa','Hernández','Avenida D 101',555456789,6),('proveedor5@email.com','Maria','Rodríguez','Calle E 202',555567890,10),('proveedor6@email.com','Pedro','Sánchez','Avenida F 303',555678901,2),('proveedor7@email.com','Sofía','Gómez','Calle G 404',555789012,7),('proveedor8@email.com','Andrés','Pérez','Avenida H 505',555890123,6),('proveedor9@email.com','Laura','Fernández','Calle I 606',555901234,1);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
INSERT INTO `receta` VALUES (1,'Lasaña de Carne','Deliciosa lasaña con carne molida, salsa de tomate y queso',7,60,36706445),(2,'Coq au Vin','Clásico francés de pollo cocido en vino tinto con champiñones y cebollas',9,90,17001982),(3,'Tacos al Pastor','Tacos mexicanos con carne de cerdo adobada, piña y cebolla',4,30,32145678),(4,'Sushi de Salmón','Rolls de sushi con salmón fresco, aguacate y arroz',8,45,23444000),(5,'Paella Valenciana','Plato español de arroz con mariscos, pollo y azafrán',6,60,38982123),(6,'Guacamole','Dip de aguacate, tomate, cebolla y cilantro',4,15,15883228),(7,'Croissant','Clásico pastelito francés hojaldrado',10,120,28992882),(8,'Tiramisú','Postre italiano de café y mascarpone',5,45,99229129),(9,'Sushi de Salmón','Rolls de sushi con salmón fresco, aguacate y arroz',8,45,890123456),(10,'Moussaka','Plato griego de berenjena, carne picada y bechamel',6,75,453219876),(11,'Chiles en Nogada','Plato mexicano de chiles poblanos rellenos de picadillo',9,90,254321987),(12,'Coq au Vin','Clásico francés de pollo cocido en vino tinto con champiñones y cebollas',9,90,987654321),(13,'Bruschetta','Tostadas italianas con tomate, albahaca y aceite de oliva',3,20,321987654),(14,'Tarta de Manzana','Deliciosa tarta de manzana con canela y azúcar',5,50,456789123),(15,'Pizza de palmitos','Deliciosa pizza de palmitos con salsa de tomate y queso derretido',4,15,123456789);
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `restaurante`
--

LOCK TABLES `restaurante` WRITE;
/*!40000 ALTER TABLE `restaurante` DISABLE KEYS */;
INSERT INTO `restaurante` VALUES (1,'La Trattoria','Calle de la Rosa 123',4.2),(2,'El Bistró Parisien','Avenida de los Arcos 456',4.5),(3,'Ristorante Bella Italia','Plaza del Sol 789',3.8),(4,'La Casa del Sabor','Calle Principal 234',4),(5,'The Garden Grill','Avenida de las Flores 567',4.7),(6,'Sabor Mexicano','Calle de la Luna 890',3.5),(7,'Le Petit Café','Calle de los Sueños 123',4.8),(8,'Taste of India','Avenida del Aroma 456',3.9),(9,'Mediterranean Delights','Paseo de las Palmas 789',4.1),(10,'Sushi World','Calle del Pescador 234',4.4),(11,'La Pizzeria Italiana','Avenida del Gusto 567',4.6),(12,'Burger Haven','Calle de las Hamburguesas 890',3.7),(13,'Thai Spice','Avenida de los Sabores 123',4.3),(14,'Steakhouse Grill','Calle de las Carnes 456',4),(15,'Fusion Flavors','Avenida del Sabor 789',3.6);
/*!40000 ALTER TABLE `restaurante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 14:20:17
