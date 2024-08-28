USE Hoteles;

-- Triggers actualizacion automatica de la disponibilidad de habitaciones cambios

DELIMITER //
CREATE TRIGGER actualizaion_disponibilidad_habitacion
BEFORE INSERT ON Reserva
FOR EACH ROW
BEGIN
 UPDATE habitacion SET disponible = 0 WHERE habitacion_id = NEW.habitacion_id;
END //
DELIMITER ;
SELECT * FROM habitacion;
SELECT * FROM reserva
-- Comprobacion de la actualizacion de la disponibilidad de habitacion

INSERT INTO reserva (codigo_reserva,fecha_llegada,fecha_salida,habitacion_id,id_usuario,codigo_de_pago) 
VALUES ("R009","2024-09-28","2024-09-29","H004","Ale23","P007");


