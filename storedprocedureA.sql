USE Hoteles;

# AGREGAR HOTELES
DELIMITER //
CREATE PROCEDURE agregar_hotel (IN p_razon_social VARCHAR(10),
IN p_nombre VARCHAR(60),
IN p_ubicacion VARCHAR(60),
IN p_codigo_reserva VARCHAR(60),
IN p_habitacion_id VARCHAR(10),
IN p_id_usuario VARCHAR(20))
BEGIN
    INSERT INTO Hotel (razon_social, nombre, ubicacion, codigo_reserva, habitacion_id, id_usuario)
    VALUES (p_razon_social, p_nombre, p_ubicacion, p_codigo_reserva, p_habitacion_id, p_id_usario);
END;
DELIMITER;

# AGREGAR CLIENTES
DELIMITER //
CREATE PROCEDURE agregar_usuarios(IN p_id_usuario VARCHAR(20), 
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
CALL agregar_usuarios("AnitaLaMasBonita", 'Ana', 'Garcia', 'anag@unn.com', 56895424);
CALL agregar_usuarios("CarlosR", 'Carlos', 'Rodriguez', 'rodriguez@unn.com', 90231536);
CALL agregar_usuarios("MaLopez", 'Maria', 'Lopez', 'lopez@unn.com', 23457834);
CALL agregar_usuarios("DaniBarr", 'Daniel', 'Barreto', 'barreto@unn.com', 99785634);
CALL agregar_usuarios("IsaacFlor", 'Isaac', 'Floreto', 'floreto@unn.com', 87653421);


# AGREGAR HABITACIONES
DELIMITER //
CREATE PROCEDURE agregar_habitaciones (IN p_habitacion_id VARCHAR(10), 
IN p_num_habitacion INT, 
IN p_tipo_habitacion TEXT)
BEGIN
    INSERT INTO Habitacion (habitacion_id, num_habitacion, tipo_habitacion) 
    VALUES (p_habitacion_id, p_num_habitacion, p_tipo_habitacion);
END //
DELIMITER;

CALL agregar_habitaciones('H002', 507, 'VIP');
CALL agregar_habitaciones('H003', 608, 'matrimonial');
CALL agregar_habitaciones('H004', 302, 'individual');
CALL agregar_habitaciones('H005', 202, 'suit');
CALL agregar_habitaciones('H010', 409, 'individual');

SELECT * FROM Habitacion;
SELECT * FROM Reserva;
DROP PROCEDURE agregar_habitaciones;
# modificar el valor cada vez que se agrega un dato
ALTER TABLE habitacion ALTER disponible SET DEFAULT 0;

# AGREGAR PAGO
DELIMITER //
CREATE PROCEDURE agregar_pago(IN p_codigo_de_pago VARCHAR(10), p_tipo_pago VARCHAR(10))
BEGIN
    INSERT INTO Pago (codigo_de_pago, tipo_pago) 
    VALUES (p_codigo_de_pago, p_tipo_pago);
END //
DELIMITER;
CALL agregar_pago ('P002', 'Plazos');
CALL agregar_pago ('P003', 'Contado');
CALL agregar_pago ('P004', 'Plazos');
CALL agregar_pago ('P005', 'Contado');
CALL agregar_pago ('P006', 'Credito');
CALL agregar_pago ('P007', 'Plazos');
CALL agregar_pago ('P008', 'Efectivo');

SELECT * FROM Pago;
DROP PROCEDURE agregar_pago;

# AGREGAR RESERVA
# Se modificó el agregar_nueva_reserva para que tenga la llave foránea de Hotel
DROP PROCEDURE agregar_nueva_reserva;
DELIMITER //
CREATE PROCEDURE agregar_nueva_reserva(IN p_codigo_reserva VARCHAR(10), 
IN p_fecha_llegada DATE, 
IN p_fecha_salida DATE, 
IN p_habitacion_id VARCHAR(10),
IN p_id_usuario VARCHAR(20),
IN p_codigo_de_pago VARCHAR(10),
IN p_razon_social VARCHAR(20)
)
BEGIN
    INSERT INTO Reserva (codigo_reserva, fecha_llegada, fecha_salida, habitacion_id, id_usuario, codigo_de_pago, razon_social) 
    VALUES (p_codigo_reserva, p_fecha_llegada, p_fecha_salida, p_habitacion_id, p_id_usuario, p_codigo_de_pago, p_razon_social);
END //
DELIMITER;

CALL agregar_nueva_reserva ('R002', '2024-06-12', '2024-06-15', 'H003', 'Ale23', 'P003', 'H1357');
SELECT * FROM reserva;
SELECT * FROM Pago;
SELECT * FROM Hotel; 

SELECT * FROM habitacion;


# PROCEDURE QUE ELIMINA RESERVAS SEGÚN EL CÓDIGO DE RESERVA
DELIMITER //
CREATE PROCEDURE cancelar_reserva(IN p_codigo_reserva VARCHAR(10))
BEGIN
    DELETE FROM Reserva WHERE codigo_reserva = p_codigo_reserva;
END //
DELIMITER;
CALL cancelar_reserva('R001');
SELECT * FROM Reserva;