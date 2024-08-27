
USE Hoteles;
 # VIEW - Reservas realizadas según una fecha en epecífico
 CREATE VIEW consultar_reserva_fecha_especifica AS
 SELECT fecha_llegada
 FROM Reserva
 WHERE fecha_llegada < fecha_salida;

SELECT * FROM consultar_reserva_fecha_especifica;

SELECT * FROM Reserva;
DROP VIEW consultar_reserva_fecha_especifica;