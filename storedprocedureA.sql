USE Hoteles;


#CREATE TABLE Reserva (codigo_reserva VARCHAR(10) PRIMARY KEY,
#fecha_llegada DATE,
#fecha_salida DATE);

DELIMITER //
CREATE PROCEDURE agregar_nueva_reserva(IN codigo_reserva VARCHAR(10), IN fecha_llegada DATE, IN fecha_salida DATE)
BEGIN
    INSERT INTO Reserva (codigo_reserva, fecha_llegada, fecha_salida) VALUES (codigo_reserva, fecha_llegada, fecha_salida);
END //
DELIMITER;

CALL agregar_nueva_reserva ('R002', '2024-08-28', '2024-09-08');
CALL agregar_nueva_reserva ('R003', '2024-05-15', '2024-05-20');


DELIMITER //
CREATE PROCEDURE cancelar_reserva(IN codigo_reserva VARCHAR(10), IN fecha_llegada DATE, IN fecha_salida DATE)
BEGIN
    DELETE FROM Reserva WHERE
END //
DELIMITER;