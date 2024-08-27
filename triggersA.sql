USE Hoteles;
# TRIGGER, se creó para que cada ve que se inserte una nueva reserv en la tabla Reserva se notifique y se inserte
# en la tabla Notificaciones.
CREATE TRIGGER notificar_nueva_reserva
AFTER INSERT ON Reserva
FOR EACH ROW
BEGIN
    INSERT INTO Notificaciones (tipo_notificacion, mensaje)
    VALUES ('Nueva Reserva', CONCAT('Se ha creado una nueva reserva con código: ', NEW.codigo_reserva, '. Cliente: ', NEW.numero_cedula, '. Habitacion: ', NEW.habitacion_id));
END;