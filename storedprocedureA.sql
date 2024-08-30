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

SELECT * FROM Usuarios;
CALL agregar_usuarios("Anita46", 'Ana', 'Mora', 'anam@correo.com', 40804000);

# AGREGAR HABITACIONES
DELIMITER //
CREATE PROCEDURE agregar_habitaciones (IN p_habitacion_id VARCHAR(10), 
IN p_num_habitacion INT, 
IN p_tipo_habitacion TEXT,
IN p_razon_social VARCHAR(20))
BEGIN
    INSERT INTO Habitacion (habitacion_id, num_habitacion, tipo_habitacion,razon_social) 
    VALUES (p_habitacion_id, p_num_habitacion, p_tipo_habitacion,p_razon_social);
END //
DELIMITER;

CALL agregar_habitaciones('H031', 502, 'VIP',"RS001");


# PROCEDURE QUE ELIMINA RESERVAS SEGÚN EL CÓDIGO DE RESERVA
DELIMITER //
CREATE PROCEDURE cancelar_reserva(IN p_codigo_reserva VARCHAR(10))
BEGIN
    DELETE FROM Reserva WHERE codigo_reserva = p_codigo_reserva;
END //
DELIMITER;

CALL cancelar_reserva('R029');


# Procedures Francisca
# CREATE PROCEDURE, según la fecha se consulta si la habtación esta disponible o no
DELIMITER //
CREATE PROCEDURE disponibilidad_habitacion (IN disponibilidad_fecha DATE)
BEGIN  
    SELECT Hotel.nombre, Habitacion.habitacion_id, Habitacion.disponible, Reserva.fecha_salida 
    FROM Habitacion 
    INNER JOIN Hotel 
    ON Hotel.razon_social = Habitacion.razon_social
    RIGHT JOIN Reserva 
    ON Reserva.razon_social = Habitacion.razon_social
    AND Habitacion.habitacion_id = Reserva.habitacion_id
    AND Reserva.fecha_salida <= disponibilidad_fecha
    WHERE Reserva.fecha_salida < disponibilidad_fecha;
END //
DELIMITER;
CALL disponibilidad_habitacion("2024-05-30");


