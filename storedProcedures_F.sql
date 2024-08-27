USE Hoteles;
# CREATE PROCEDURE, según la fecha se consulta si la habtación esta disponible o no
DELIMITER //
CREATE PROCEDURE disponibilidad_habitacion (IN disponibilidad_fecha DATE)
BEGIN 
    SELECT Habitacion.disponible,Reserva.fecha_salida FROM habitacion 
    INNER JOIN Reserva ON Reserva.fecha_salida < disponibilidad_fecha; 
END //
DELIMITER;

CALL disponibilidad_habitacion("2024-11-27")