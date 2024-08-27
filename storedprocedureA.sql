USE Hoteles;

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
SELECT * FROM Habitacion;
DROP PROCEDURE agregar_habitaciones;
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

SELECT * FROM reserva;

UPDATE habitacion SET disponible = 1 WHERE habitacion_id = "H001";
# ES NECESARIO? YA SE CREO EL ALTER TABLE QUE AGREGA POR DEFECTO EL 1 y 0


# PROCEDURE QUE ELIMINA RESERVAS SEGÚN EL CÓDIGO DE RESERVA
DELIMITER //
CREATE PROCEDURE cancelar_reserva(IN e_codigo_reserva VARCHAR(10))
BEGIN
    DELETE FROM Reserva WHERE codigo_reserva = e_codigo_reserva;
END //
DELIMITER;
CALL cancelar_reserva('R001');
SELECT * FROM Reserva;