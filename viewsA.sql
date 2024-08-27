
USE Hoteles;
 # VIEW - todas las fechas ya reservadas
 CREATE VIEW consultar_reservas AS
 SELECT fecha_llegada
 FROM Reserva
 WHERE fecha_llegada < fecha_salida;

SELECT * FROM consultar_reservas;
SELECT * FROM Reserva;
DROP VIEW consultar_reserva_fecha_especifica;

# VIEW - Reservas realizadas según una fecha en epecífico
CREATE VIEW consultar_reserva_fecha_especifica AS
SELECT fecha_llegada
FROM Reserva
WHERE fecha_llegada < fecha_salida;


SELECT *
FROM consultar_reserva_fecha_especifica
WHERE fecha_llegada = '2024-06-12';
DROP VIEW consultar_reserva_fecha_especifica;
