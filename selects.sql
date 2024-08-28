# Seleccionar tablas
SELECT * FROM Administrador;
SELECT * FROM Usuarios;
SELECT * FROM Hotel;
SELECT * FROM Reserva;
SELECT * FROM Pago;
SELECT * FROM Habitacion;
SELECT * FROM Codigos; 
SELECT * FROM Notificaciones;

-- insertar actualizaciones a las tablas
UPDATE habitacion SET codigo_reserva = "RS002" WHERE tipo_habitacion = "Suite";