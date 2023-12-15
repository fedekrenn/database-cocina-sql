--------------------------------------
-- Creación de Funciones --

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

-- Función para obtener el teléfono del proveedor según su email
DROP FUNCTION IF EXISTS fn_obtener_telefono_proveedor;
DELIMITER //
CREATE FUNCTION fn_obtener_telefono_proveedor(P_EMAIL_PROVEEDOR VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_telefono_proveedor INT;
    SELECT telefono INTO v_telefono_proveedor
    FROM proveedor
    WHERE email = P_EMAIL_PROVEEDOR ;
    RETURN v_telefono_proveedor;
END //
DELIMITER ;

-- Pruebas
SELECT fn_cantidad_recetas_cocinero(123456789) AS cantidad_recetas_cocinero;
SELECT fn_obtener_telefono_proveedor('proveedor13@email.com') AS telefono;