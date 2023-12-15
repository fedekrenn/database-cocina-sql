--------------------------
-- Creación de Triggers --


-- Tabla de log para la tabla "receta"
CREATE TABLE IF NOT EXISTS log_receta (
    `id_log` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del registro en el log',
    `operacion` VARCHAR(10) NOT NULL COMMENT 'Tipo de operación (INSERT, UPDATE, DELETE, etc.)',
    `usuario` VARCHAR(50) NOT NULL COMMENT 'Usuario que realizó la operación',
    `fecha` DATE NOT NULL COMMENT 'Fecha de la operación',
    `hora` TIME NOT NULL COMMENT 'Hora de la operación',
    PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de log para la tabla receta';

-- Tabla de log para la tabla "cocinero"
CREATE TABLE IF NOT EXISTS log_cocinero (
    `id_log` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del registro en el log',
    `operacion` VARCHAR(10) NOT NULL COMMENT 'Tipo de operación (INSERT, UPDATE, DELETE, etc.)',
    `usuario` VARCHAR(50) NOT NULL COMMENT 'Usuario que realizó la operación',
    `fecha` DATE NOT NULL COMMENT 'Fecha de la operación',
    `hora` TIME NOT NULL COMMENT 'Hora de la operación',
    PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de log para la tabla cocinero';

-- Trigger AFTER para la tabla "receta"
DROP TRIGGER IF EXISTS trg_receta_insert;
DELIMITER //
CREATE TRIGGER trg_receta_insert
AFTER INSERT ON receta
FOR EACH ROW
BEGIN
    INSERT INTO log_receta (operacion, usuario, fecha, hora)
    VALUES ('INSERT', USER(), CURDATE(), CURTIME());
END;
//
DELIMITER ;

-- Trigger BEFORE para la tabla "receta"
DROP TRIGGER IF EXISTS trg_receta_update;
DELIMITER //
CREATE TRIGGER trg_receta_update
BEFORE UPDATE ON receta
FOR EACH ROW
BEGIN
    INSERT INTO log_receta (operacion, usuario, fecha, hora)
    VALUES ('UPDATE', USER(), CURDATE(), CURTIME());
END;
//
DELIMITER ;

-- Trigger AFTER para la tabla "cocinero"
DROP TRIGGER IF EXISTS trg_cocinero_insert;
DELIMITER //
CREATE TRIGGER trg_cocinero_insert
AFTER INSERT ON cocinero
FOR EACH ROW
BEGIN
    INSERT INTO log_cocinero (operacion, usuario, fecha, hora)
    VALUES ('INSERT', USER(), CURDATE(), CURTIME());
END;
//
DELIMITER ;

-- Trigger BEFORE para la tabla "cocinero"
DROP TRIGGER IF EXISTS trg_cocinero_update;
DELIMITER //
CREATE TRIGGER trg_cocinero_update
BEFORE UPDATE ON cocinero
FOR EACH ROW
BEGIN
    INSERT INTO log_cocinero (operacion, usuario, fecha, hora)
    VALUES ('UPDATE', USER(), CURDATE(), CURTIME());
END;
//
DELIMITER ;

-- Pruebas
INSERT INTO cocinero VALUES (17001900, 'Erica', 'Krenn', '1964-10-9', 4, 2);
UPDATE receta SET dificultad = 4 WHERE id_receta = 6;

SELECT * FROM log_cocinero;
SELECT * FROM log_receta;