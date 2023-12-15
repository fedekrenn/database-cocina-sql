DROP SCHEMA IF EXISTS db_cocina_coder;
CREATE SCHEMA IF NOT EXISTS db_cocina_coder;
USE db_cocina_coder;

-- Tabla Detalle Categoria
CREATE TABLE IF NOT EXISTS detalle_categoria (
  `id_categoria` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la categoría',
  `nombre` VARCHAR(45) NOT NULL COMMENT 'Nombre de la categoría',
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de las distintas categorías de productos de un proveedor';

-- Tabla Detalle Especialidad
CREATE TABLE IF NOT EXISTS detalle_especialidad (
  `id_especialidad` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la especialidad',
  `nombre` VARCHAR(45) NOT NULL COMMENT 'Nombre de la especialidad',
  PRIMARY KEY (`id_especialidad`))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de las especialidades';

-- Tabla Restaurante
CREATE TABLE IF NOT EXISTS restaurante (
  `id_restaurante` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del restaurante',
  `nombre` VARCHAR(45) NOT NULL COMMENT 'Nombre del restaurante',
  `direccion` VARCHAR(45) NOT NULL COMMENT 'Direccion fisica del local',
  `clasificacion` FLOAT NOT NULL COMMENT 'Clasificacion basado en las estrellas',
  PRIMARY KEY (`id_restaurante`))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de los restaurantes';

-- Tabla Cocinero
CREATE TABLE IF NOT EXISTS cocinero (
  `dni` INT NOT NULL COMMENT 'DNI del cocinero',
  `nombre` VARCHAR(45) NOT NULL COMMENT 'Nombre del cocinero',
  `apellido` VARCHAR(45) NOT NULL COMMENT 'Apellido del cocinero',
  `fecha_nacimiento` DATE NOT NULL COMMENT 'Fecha de nacimiento',
  `id_especialidad` INT NOT NULL COMMENT 'Identificador de su especialidad',
  `id_restaurante` INT NOT NULL COMMENT 'Identificador del restaurante al que pertenece',
  PRIMARY KEY (`dni`),
  CONSTRAINT `fk_Cocinero_Especialidad` FOREIGN KEY (`id_especialidad`) REFERENCES `db_cocina_coder`.`detalle_especialidad` (`id_especialidad`),
  CONSTRAINT `fk_Cocinero_Restaurante1` FOREIGN KEY (`id_restaurante`) REFERENCES `db_cocina_coder`.`restaurante` (`id_restaurante`))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de los cocineros';

-- Tabla Receta
CREATE TABLE IF NOT EXISTS receta (
  `id_receta` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la receta',
  `nombre` VARCHAR(45) NOT NULL COMMENT 'Nombre de la receta',
  `descripcion` TEXT(300) NOT NULL COMMENT 'Descripcion de los pasos a seguir para realizar la receta',
  `dificultad` INT NOT NULL COMMENT 'Dificultad del 1 al 10',
  `tiempo` INT NOT NULL COMMENT 'Tiempo de preparacion en minutos',
  `dni_cocinero` INT NOT NULL COMMENT 'DNI del cocinero que prepara la receta',
  PRIMARY KEY (`id_receta`),
  CONSTRAINT `fk_Receta_Cocinero1` FOREIGN KEY (`dni_cocinero`) REFERENCES `db_cocina_coder`.`cocinero` (`dni`))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de las recetas';

-- Tabla Proveedor
CREATE TABLE IF NOT EXISTS proveedor (
  `email` VARCHAR(50) NOT NULL COMMENT 'Email del proveedor',
  `nombre` VARCHAR(45) NOT NULL COMMENT 'Nombre del proveedor',
  `apellido` VARCHAR(45) NOT NULL COMMENT 'Apellido del proveedor',
  `direccion` VARCHAR(100) NOT NULL COMMENT 'Direccion fisica',
  `telefono` INT NOT NULL COMMENT 'Telefono de contacto',
  `id_categoria` INT NOT NULL COMMENT 'Categoría de producto que nos brinda',
  PRIMARY KEY (`email`),
  CONSTRAINT `fk_Proveedor_Detalle_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `db_cocina_coder`.`detalle_categoria` (`id_categoria`))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de los proveedores';

-- Tabla Ingrediente
CREATE TABLE IF NOT EXISTS ingrediente (
  `id_ingrediente` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del ingrediente',
  `cantidad` INT NOT NULL COMMENT 'Cantidad en base a su stock',
  `nombre` VARCHAR(45) NOT NULL COMMENT 'Nombre del ingrediente',
  `email_proveedor` VARCHAR(50) NOT NULL COMMENT 'Email del proveedor que provee el ingrediente',
  `id_receta` INT NOT NULL COMMENT 'Identificador de la receta a la que pertenece',
  PRIMARY KEY (`id_ingrediente`),
  CONSTRAINT `fk_Ingrediente_Proveedor` FOREIGN KEY (`email_proveedor`) REFERENCES `db_cocina_coder`.`proveedor` (`email`),
  CONSTRAINT `fk_Ingrediente_Receta1` FOREIGN KEY (`id_receta`) REFERENCES `db_cocina_coder`.`receta` (`id_receta`))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de los ingredientes';