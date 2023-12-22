/* ----- Creación de Funciones ----- */

-- Función para obtener cuantas recetas tiene a cargo un cocinero
DROP FUNCTION IF EXISTS fn_cantidad_recetas_cocinero;
DELIMITER $$
CREATE FUNCTION fn_cantidad_recetas_cocinero(P_DNI_COCINERO INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE V_CANTIDAD_RECETAS INT;
    SELECT COUNT(*) INTO V_CANTIDAD_RECETAS
    FROM Receta
    WHERE dni_cocinero = P_DNI_COCINERO;
    RETURN V_CANTIDAD_RECETAS;
END $$
DELIMITER ;

-- Función para calcular los años de antigüedad de un cocinero
DROP FUNCTION IF EXISTS fn_calcular_antiguedad;
DELIMITER //
CREATE FUNCTION fn_calcular_antiguedad(P_DNI_COCINERO INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_años_antiguedad INT;
    SELECT TIMESTAMPDIFF(YEAR, fecha_ingreso, CURDATE()) INTO v_años_antiguedad
    FROM cocinero
    WHERE dni = P_DNI_COCINERO ;
    RETURN v_años_antiguedad;
END //
DELIMITER ;


/* ----- Pruebas ----- */
-- SELECT fn_cantidad_recetas_cocinero(32145678) AS cantidad_recetas_cocinero;
-- SELECT fn_calcular_antiguedad(23444000) AS años_antiguedad