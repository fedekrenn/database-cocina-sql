--------------------------
-- Creación de Triggers --

-- Trigger de actualización cantidad de ingredientes
DROP TRIGGER IF EXISTS trg_sumar_cantidad_ingredientes;
DELIMITER //
CREATE TRIGGER trg_sumar_cantidad_ingredientes
AFTER INSERT ON receta_ingrediente
FOR EACH ROW
BEGIN
	UPDATE receta
  SET cantidad_ingredientes = cantidad_ingredientes + 1
  WHERE id_receta = NEW.id_receta;
END;
//
DELIMITER ;

DROP TRIGGER IF EXISTS trg_restar_cantidad_ingredientes;
DELIMITER //
CREATE TRIGGER trg_restar_cantidad_ingredientes
AFTER DELETE ON receta_ingrediente
FOR EACH ROW
BEGIN
	UPDATE receta
  SET cantidad_ingredientes = cantidad_ingredientes - 1
  WHERE id_receta = OLD.id_receta;
END;
//
DELIMITER ;

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

-- Trigger de registro de eliminación para la tabla "cocinero"
DROP TRIGGER IF EXISTS trg_cocinero_delete;
DELIMITER //
CREATE TRIGGER trg_cocinero_delete
BEFORE DELETE ON cocinero
FOR EACH ROW
BEGIN
  INSERT INTO log_cocinero (operacion, usuario, fecha, hora)
  VALUES ('DELETE', USER(), CURDATE(), CURTIME());
END;
//
DELIMITER ;