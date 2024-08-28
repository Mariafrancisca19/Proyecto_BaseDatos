-- CREATE VIEWS RESERVAS REALIZADAS EN EL DIA ACTUAL
USE Hoteles;
CREATE VIEW actualizacion_reserva_dia AS 
SELECT COUNT(Reserva.fecha_llegada) AS cantidad_reservas,fecha_llegada FROM Reserva
WHERE DATE(Reserva.fecha_llegada) = CURRENT_DATE
GROUP BY fecha_llegada;

DROP VIEW actualizacion_reserva_dia;

-- SELECT CURRENT_TIMESTAMP
SELECT * FROM actualizacion_reserva_dia;



