-- CREATE VIEWS
USE Hoteles;
CREATE VIEW actualizacion_reserva_dia AS 
SELECT Reserva.fecha_llegada FROM Reserva
WHERE DATE(Reserva.fecha_llegada) = CURRENT_DATE


-- SELECT CURRENT_TIMESTAMP
SELECT * FROM actualizacion_reserva_dia;



