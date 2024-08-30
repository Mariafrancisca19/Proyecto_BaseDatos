USE Hoteles;

# AGREGAR USUARIOS - Son datos de entrada
DELIMITER //
CREATE PROCEDURE agregar_usuarios (IN p_id_usuario VARCHAR(20), 
IN p_nombre VARCHAR(60), 
IN p_apellido VARCHAR(20),
IN p_correo VARCHAR(60),
IN p_tel TEXT)
BEGIN 
    INSERT INTO Usuarios(id_usuario, nombre, apellido, correo, tel) 
    VALUES (p_id_usuario, p_nombre,p_apellido, p_correo, p_tel);
END //
DELIMITER;
DROP PROCEDURE agregar_usuarios;

SELECT * FROM Usuarios;
CALL agregar_usuarios("Angel99", 'Angel', 'Garcia', 'agarcia@correo.com', 81896543);


# PROCEDURE QUE ELIMINA RESERVAS SEGÚN EL CÓDIGO DE RESERVA
DELIMITER //
CREATE PROCEDURE cancelar_reserva(IN p_codigo_reserva VARCHAR(10))
BEGIN
    DELETE FROM Reserva WHERE codigo_reserva = p_codigo_reserva;
END //
DELIMITER;
CALL cancelar_reserva('R029');
