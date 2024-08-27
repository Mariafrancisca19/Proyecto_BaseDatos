USE Hoteles;


# CREATE TABLE Hotel (razon_social VARCHAR(10) PRIMARY KEY ,
# nombre VARCHAR(60),
# ubicacion VARCHAR(60));

# AGREGAR HOTELES
DELIMITER //
CREATE PROCEDURE agregar_hotel (IN razon_social VARCHAR(10))
END;
DELIMITER;

# AGREGAR CLIENTES
DELIMITER //
CREATE PROCEDURE agregar_clientes(IN numero_cedula INT, 
IN nombre VARCHAR(60), 
IN apellido VARCHAR(60), 
IN correo VARCHAR(60))
BEGIN 
    INSERT INTO Clientes (numero_cedula, nombre, apellido, correo) 
    VALUES (numero_cedula, nombre, apellido, correo);
END //
DELIMITER;

SELECT * FROM Clientes;
CALL agregar_clientes(202304586, 'Juan', 'Perez', 'perez@unn.com');
CALL agregar_clientes(234567890, 'Ana', 'Garcia', 'anag@unn.com');
CALL agregar_clientes(345678901, 'Carlos', 'Rodriguez', 'rodriguez@unn.com');
CALL agregar_clientes(456789012, 'Maria', 'Lopez', 'lopez@unn.com');
CALL agregar_clientes(466789012, 'Pamela', 'Mendez', 'lopez@unn.com');


# AGREGAR HABITACIONES
DELIMITER //
CREATE PROCEDURE agregar_habitaciones (IN habitacion_id VARCHAR(10), 
IN num_habitacion INT, 
IN tipo_habitacion TEXT)
BEGIN
    INSERT INTO Habitacion (habitacion_id, num_habitacion, tipo_habitacion) 
    VALUES (habitacion_id, num_habitacion, tipo_habitacion);
END //
DELIMITER;

CALL agregar_habitaciones('H002', 507, 'VIP');
CALL agregar_habitaciones('H003', 608, 'matrimonial');
CALL agregar_habitaciones('H004', 302, 'individual');
CALL agregar_habitaciones('H005', 202, 'suit');
CALL agregar_habitaciones('H006', 101, 'familiar');
SELECT * FROM Habitacion;
DROP PROCEDURE agregar_habitaciones;
# modificar el valor cada vez que se agrega un dato
ALTER TABLE habitacion ALTER disponible SET DEFAULT 0;

# AGREGAR PAGO
DELIMITER //
CREATE PROCEDURE agregar_pago(IN codigo_de_pago VARCHAR(10), tipo_pago VARCHAR(10))
BEGIN
    INSERT INTO Pago (codigo_de_pago, tipo_pago) 
    VALUES (codigo_de_pago, tipo_pago);
END //
DELIMITER;
CALL agregar_pago ('P002', 'Plazos');
CALL agregar_pago ('P003', 'Contado');
CALL agregar_pago ('P004', 'Plazos');
CALL agregar_pago ('P005', 'Contado');
CALL agregar_pago ('P006', 'Credito');
SELECT * FROM Pago;
DROP PROCEDURE agregar_pago;


# AGREGAR RESERVA
DROP PROCEDURE agregar_nueva_reserva;
DELIMITER //
CREATE PROCEDURE agregar_nueva_reserva(IN codigo_reserva VARCHAR(10), 
IN fecha_llegada DATE, 
IN fecha_salida DATE, 
IN habitacion_id VARCHAR(10),
IN numero_cedula INT,
IN codigo_de_pago VARCHAR(10))
BEGIN
    INSERT INTO Reserva (codigo_reserva, fecha_llegada, fecha_salida, habitacion_id, numero_cedula, codigo_de_pago) 
    VALUES (codigo_reserva, fecha_llegada, fecha_salida, habitacion_id, numero_cedula, codigo_de_pago);
END //
DELIMITER;

CALL agregar_nueva_reserva ('R002', '2024-06-12', '2024-06-15', 'H003', 234567890, 'P003');
CALL agregar_nueva_reserva ('R005', '2024-03-09', '2024-03-17', 'H004', 345678901, 'P004');
CALL agregar_nueva_reserva ('R006', '2024-04-05', '2024-04-08', 'H005', 456789012, 'P005');
CALL agregar_nueva_reserva ('R007', '2024-01-05', '2024-01-09', 'H006', 456789012, 'P006');
SELECT * FROM reserva;


# PROCEDURE QUE ELIMINA RESERVAS SEGÚN EL CÓDIGO DE RESERVA
DELIMITER //
CREATE PROCEDURE cancelar_reserva(IN e_codigo_reserva VARCHAR(10))
BEGIN
    DELETE FROM Reserva WHERE codigo_reserva = e_codigo_reserva;
END //
DELIMITER;
CALL cancelar_reserva('R001');
SELECT * FROM Reserva;