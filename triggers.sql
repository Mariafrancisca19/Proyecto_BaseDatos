USE Hoteles;
# TRIGGER, se creó para que cada ve que se inserte una nueva reserva en la tabla Reserva se notifique y se inserte
# en la tabla Notificaciones.
DELIMITER //
CREATE TRIGGER notificar_nueva_reserva
AFTER INSERT ON Reserva
FOR EACH ROW
BEGIN
    INSERT INTO Notificaciones (tipo_notificacion, mensaje)
    VALUES ('Nueva reserva', CONCAT('Se ha creado una nueva reserva con código: ', NEW.codigo_reserva, '. Cliente: ', NEW.id_usuario, '. Habitacion: ', NEW.habitacion_id));
END //
DELIMITER;

-- Triggers actualizacion automatica de la disponibilidad de habitaciones cambios

DELIMITER //
CREATE TRIGGER actualizaion_disponibilidad_habitacion
BEFORE INSERT ON Reserva
FOR EACH ROW
BEGIN
 UPDATE habitacion SET disponible = 'No disponible' WHERE habitacion_id = NEW.habitacion_id;
END //
DELIMITER ;


-- Comprobacion de la actualizacion de la disponibilidad de habitacion
INSERT INTO reserva (codigo_reserva, fecha_llegada, fecha_salida, habitacion_id, id_usuario,codigo_de_pago, razon_social) 
VALUES ("R031", "2024-06-23", "2024-06-25", "H039", "Carlos9", "P001", "RS005");

SELECT * FROM reserva;
SELECT * FROM habitacion;
SELECT * FROM notificaciones;