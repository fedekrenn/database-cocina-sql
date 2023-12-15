-- Creación de usuarios
CREATE USER IF NOT EXISTS 'usuario_lectura'@'localhost' IDENTIFIED BY 'usuario1';
CREATE USER IF NOT EXISTS 'usuario_modificacion'@'localhost' IDENTIFIED BY 'usuario2';

-- Conceder permisos de solo lectura para el primer usuario y lectura, inserción y modificación para el segundo
GRANT SELECT ON db_cocina_coder.* TO 'usuario_lectura'@'localhost';
GRANT SELECT, INSERT, UPDATE ON db_cocina_coder.* TO 'usuario_modificacion'@'localhost';