
USE Hoteles;
 # VIEW - todas las fechas ya reservadas
 CREATE VIEW consultar_reservas AS
 SELECT fecha_llegada, razon_social
 FROM Reserva
 WHERE fecha_llegada < fecha_salida;

SELECT * FROM consultar_reservas;
DROP VIEW consultar_reservas;

# VIEW - Reservas realizadas según una fecha en epecífico
CREATE VIEW consultar_reserva_fecha_especifica AS
SELECT Reserva.fecha_llegada, Hotel.nombre, Reserva.razon_social
FROM Reserva
INNER JOIN hotel
WHERE Reserva.razon_social = hotel.razon_social AND fecha_llegada < fecha_salida;

SELECT *
FROM consultar_reserva_fecha_especifica
WHERE fecha_llegada = '2024-07-17';

DROP VIEW consultar_reserva_fecha_especifica;

-- CREATE VIEWS RESERVAS REALIZADAS EN EL DIA ACTUAL - FRANCISCA
USE Hoteles;
CREATE VIEW actualizacion_reserva_dia AS 
SELECT COUNT(Reserva.fecha_llegada) AS cantidad_reservas,fecha_llegada FROM Reserva
WHERE DATE(Reserva.fecha_llegada) = CURRENT_DATE
GROUP BY fecha_llegada;

DROP VIEW actualizacion_reserva_dia;

-- SELECT CURRENT_TIMESTAMP
SELECT * FROM actualizacion_reserva_dia;
