/* ----- Creación de Stored Procedures ----- */

-- Stored Procedure para ordenar una tabla
DROP PROCEDURE IF EXISTS sp_ordenar_tabla;
DELIMITER //
CREATE PROCEDURE sp_ordenar_tabla(
  IN P_NOMBRE_TABLA VARCHAR(45), -- Se ingresa el nombre de la tabla
  IN P_CAMPO_ORDEN VARCHAR(45), -- La columna por la cual se quiere ordenar
  IN P_ORDEN VARCHAR(4) -- Puede ser 'ASC' o 'DESC'
)
BEGIN
  SET @consulta = CONCAT('SELECT * FROM ', P_NOMBRE_TABLA, ' ORDER BY ', P_CAMPO_ORDEN, ' ', P_ORDEN);
  PREPARE ejecucion FROM @consulta;
  EXECUTE ejecucion;
  DEALLOCATE PREPARE ejecucion;
END //
DELIMITER ;

-- Stored Procedure para insertar o eliminar registros
DROP PROCEDURE IF EXISTS sp_modificar_tabla;
DELIMITER //
CREATE PROCEDURE sp_modificar_tabla(
  IN P_OPERACION INT, -- 1 para insertar, 2 para eliminar
  IN P_NOMBRE_TABLA VARCHAR(45),
  IN P_VALORES_INSERTAR VARCHAR(500), -- En caso de inserción, los valores a insertar
  IN P_CONDICION_ELIMINAR VARCHAR(100) -- En caso de eliminación, la condición para eliminar
)
BEGIN
  IF P_OPERACION = 1 THEN
    -- Inserción de registros
    SET @consulta = CONCAT('INSERT INTO ', P_NOMBRE_TABLA, ' VALUES (', P_VALORES_INSERTAR, ')');
  ELSE
    -- Eliminación de registros
    SET @consulta = CONCAT('DELETE FROM ', P_NOMBRE_TABLA, ' WHERE ', P_CONDICION_ELIMINAR);
  END IF;

  PREPARE ejecucion FROM @consulta;
  EXECUTE ejecucion;
  DEALLOCATE PREPARE ejecucion;
END //
DELIMITER ;

/* ----- Pruebas ----- */
-- CALL sp_ordenar_tabla('cocinero', 'dni', 'ASC');
-- CALL sp_ordenar_tabla('ingrediente', 'precio', 'DESC');
-- CALL sp_modificar_tabla(1, 'cocinero', "780012345, 'Martin', 'Galdamez', '2021-11-28', 3, 9", NULL); -- Para insertar
-- CALL sp_modificar_tabla(2, 'cocinero', NULL, 'dni = 780012345'); -- Para eliminar




