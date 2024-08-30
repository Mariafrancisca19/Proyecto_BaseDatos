USE Hoteles;
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
DROP PROCEDURE disponibilidad_habitacion;


SELECT * FROM Reserva;
SELECT * FROM Habitacion;
SELECT * FROM reserva;
SELECT * FROM hotel;
SELECT Hotel.nombre, Habitacion.habitacion_id, Habitacion.disponible, Reserva.fecha_salida 
FROM Habitacion 
INNER JOIN Hotel
ON Hotel.razon_social = Habitacion.razon_social
RIGHT JOIN Reserva 
ON Reserva.razon_social = Habitacion.razon_social;
SELECT * FROM reserva
