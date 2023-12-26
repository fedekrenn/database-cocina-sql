/* ----- Scrip inicial ----- */

DROP SCHEMA IF EXISTS db_cocina_coder;
CREATE SCHEMA IF NOT EXISTS db_cocina_coder;
USE db_cocina_coder;


/* ----- Creación de tablas ----- */

-- Tabla Detalle Categoria
CREATE TABLE IF NOT EXISTS detalle_categoria (
  id_categoria INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la categoría',
  nombre VARCHAR(45) NOT NULL UNIQUE COMMENT 'Nombre de la categoría',
  PRIMARY KEY (id_categoria))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de las distintas categorías de productos de un proveedor';

-- Tabla Detalle Especialidad
CREATE TABLE IF NOT EXISTS detalle_especialidad (
  id_especialidad INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la especialidad',
  nombre VARCHAR(45) NOT NULL UNIQUE COMMENT 'Nombre de la especialidad',
  PRIMARY KEY (id_especialidad))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de las especialidades';

-- Tabla Restaurante
CREATE TABLE IF NOT EXISTS restaurante (
  id_restaurante INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del restaurante',
  nombre VARCHAR(45) NOT NULL COMMENT 'Nombre del restaurante',
  direccion VARCHAR(45) NOT NULL COMMENT 'Direccion fisica del local',
  clasificacion DECIMAL(2, 1) NOT NULL COMMENT 'Clasificacion basado en las estrellas',
  PRIMARY KEY (id_restaurante))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de los restaurantes';

-- Tabla Cocinero
CREATE TABLE IF NOT EXISTS cocinero (
  dni INT NOT NULL COMMENT 'DNI del cocinero',
  nombre VARCHAR(45) NOT NULL COMMENT 'Nombre del cocinero',
  apellido VARCHAR(45) NOT NULL COMMENT 'Apellido del cocinero',
  fecha_ingreso DATE NOT NULL COMMENT 'Fecha de ingreso al restaurante',
  id_especialidad INT NOT NULL COMMENT 'Identificador de su especialidad',
  id_restaurante INT NOT NULL COMMENT 'Identificador del restaurante al que pertenece',
  PRIMARY KEY (`dni`),
  CONSTRAINT fk_Cocinero_Especialidad FOREIGN KEY (id_especialidad) REFERENCES detalle_especialidad (id_especialidad),
  CONSTRAINT fk_Cocinero_Restaurante1 FOREIGN KEY (id_restaurante) REFERENCES restaurante (id_restaurante))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de los cocineros';

-- Tabla Receta
CREATE TABLE IF NOT EXISTS receta (
  id_receta INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la receta',
  nombre VARCHAR(45) NOT NULL COMMENT 'Nombre de la receta',
  descripcion TEXT(300) NOT NULL COMMENT 'Descripcion de los pasos a seguir para realizar la receta',
  dificultad INT NOT NULL COMMENT 'Dificultad del 1 al 10',
  cantidad_ingredientes INT NOT NULL DEFAULT 0 COMMENT 'Cantidad de ingredientes, un trigger lo actualizará',
  tiempo INT NOT NULL COMMENT 'Tiempo de preparacion en minutos',
  dni_cocinero INT NOT NULL COMMENT 'DNI del cocinero que prepara la receta',
  PRIMARY KEY (id_receta),
  CONSTRAINT fk_Receta_Cocinero1 FOREIGN KEY (dni_cocinero) REFERENCES cocinero (dni))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de las recetas';

-- Tabla Proveedor
CREATE TABLE IF NOT EXISTS proveedor (
  codigo INT NOT NULL COMMENT 'Código único del proveedor',
  nombre VARCHAR(45) NOT NULL COMMENT 'Nombre del proveedor',
  apellido VARCHAR(45) NOT NULL COMMENT 'Apellido del proveedor',
  direccion VARCHAR(100) NOT NULL COMMENT 'Direccion fisica',
  telefono INT NOT NULL COMMENT 'Telefono de contacto',
  id_categoria INT NOT NULL COMMENT 'Categoría de producto que nos brinda',
  PRIMARY KEY (codigo),
  CONSTRAINT fk_Proveedor_Detalle_categoria FOREIGN KEY (id_categoria) REFERENCES detalle_categoria (id_categoria))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de los proveedores';

-- Tabla Ingrediente
CREATE TABLE IF NOT EXISTS ingrediente (
  id_ingrediente INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del ingrediente',
  precio DECIMAL(10, 2) NOT NULL COMMENT 'Precio del producto',
  nombre VARCHAR(45) NOT NULL UNIQUE COMMENT 'Nombre del ingrediente',
  codigo_proveedor INT NOT NULL COMMENT 'Código único del proveedor que provee el ingrediente',
  PRIMARY KEY (id_ingrediente),
  CONSTRAINT fk_Ingrediente_Proveedor FOREIGN KEY (codigo_proveedor) REFERENCES proveedor (codigo))
ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla que contiene los datos de los ingredientes';

-- Tabla para relación Recetas e ingredientes
CREATE TABLE IF NOT EXISTS receta_ingrediente (
	id_receta INT NOT NULL COMMENT 'Identificador único de la receta',
  id_ingrediente INT NOT NULL COMMENT 'Identificador único del ingrediente',
  cantidad INT NOT NULL COMMENT 'Cantidad de cada ingrediente que lleva la receta',
  PRIMARY KEY(id_receta, id_ingrediente),
  CONSTRAINT fk_receta FOREIGN KEY (id_receta) REFERENCES receta(id_receta) ON DELETE CASCADE,
  CONSTRAINT fk_ingrediente FOREIGN KEY (id_ingrediente) REFERENCES ingrediente(id_ingrediente))
ENNE = InnoDB DEFAULT CHARSET = latin1 COMMENT = 'Tabla intermedia que relaciona ingredientes con recetas';

-- Tabla de log para la tabla "receta"
CREATE TABLE IF NOT EXISTS log_receta (
  id_log INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del registro en el log',
  operacion VARCHAR(10) NOT NULL COMMENT 'Tipo de operación (INSERT, UPDATE, DELETE, etc.)',
  usuario VARCHAR(50) NOT NULL COMMENT 'Usuario que realizó la operación',
  fecha DATE NOT NULL COMMENT 'Fecha de la operación',
  hora TIME NOT NULL COMMENT 'Hora de la operación',
  PRIMARY KEY (id_log)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de log para la tabla receta';

-- Tabla de log para la tabla "cocinero"
CREATE TABLE IF NOT EXISTS log_cocinero (
  id_log INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del registro en el log',
  operacion VARCHAR(10) NOT NULL COMMENT 'Tipo de operación (INSERT, UPDATE, DELETE, etc.)',
  usuario VARCHAR(50) NOT NULL COMMENT 'Usuario que realizó la operación',
  fecha DATE NOT NULL COMMENT 'Fecha de la operación',
  hora TIME NOT NULL COMMENT 'Hora de la operación',
  PRIMARY KEY (id_log)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de log para la tabla cocinero';
