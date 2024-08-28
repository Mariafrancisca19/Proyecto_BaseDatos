# Seleccionar tablas
SELECT * FROM Administrador;
SELECT * FROM Usuarios;
SELECT * FROM Hotel;
SELECT * FROM Reserva;
SELECT * FROM Pago;
SELECT * FROM Habitacion;
SELECT * FROM Codigos;
SELECT * FROM Notificaciones;

UPDATE habitacion SET razon_social = "RS001" WHERE tipo_habitacion = "VIP";
SELECT Habitacion SET razon_social = "RS002" WHERE tipo_habitacion = "Individual";