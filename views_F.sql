-- --  views --> vistas almacenan una consulta a la cuál se le da un nombre y puede ser utilizada posteriormente.
--               Permiten a los usuarios acceder a una parte específica de la base de datos y simplifican la complejidad de las consultas.

-- CREATE VIEWS RESERVAS REALIZADAS EN EL DIA ACTUAL
USE Hoteles;
CREATE VIEW actualizacion_reserva_dia AS 
SELECT COUNT(Reserva.fecha_llegada) AS cantidad_reservas,fecha_llegada FROM Reserva
WHERE DATE(Reserva.fecha_llegada) = CURRENT_DATE
GROUP BY fecha_llegada;

DROP VIEW actualizacion_reserva_dia;

-- SELECT CURRENT_TIMESTAMP
SELECT * FROM actualizacion_reserva_dia;



