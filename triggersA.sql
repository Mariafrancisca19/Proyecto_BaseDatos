USE Hoteles;
# TRIGGER, se creó para que cada ve que se inserte una nueva reserv en la tabla Reserva se notifique y se inserte
# en la tabla Notificaciones.
CREATE TRIGGER notificar_nueva_reserva
AFTER INSERT ON Reserva
FOR EACH ROW
BEGIN
    INSERT INTO Notificaciones (tipo_notificacion, mensaje)
    VALUES ('Nueva reserva', CONCAT('Se ha creado una nueva reserva con código: ', NEW.codigo_reserva, '. Cliente: ', NEW.id_usuario, '. Habitacion: ', NEW.habitacion_id));
END;