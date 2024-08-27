--  Insertar datos en tablas DATOS DE PRUEBA
INSERT INTO Administrador (codigo_admi,nombre, apellido,correo) 
VALUES ("A001","Gabriel","Garcia","garcia@correo.com");
INSERT INTO Clientes (numero_cedula, nombre, apellido, correo) 
VALUES (101170698,"Maria","Gonzales","gonza@unn.com");
INSERT INTO Hotel (razon_social, nombre, ubicacion) 
VALUES ("H1357","Sheraton","Zona A");
INSERT INTO Reserva (codigo_reserva, fecha_llegada,fecha_salida, habitacion_id, numero_cedula, codigo_de_pago)
VALUES ("R001","2024-11-23","2024-11-26", "H001", 101170698, "P001");
INSERT INTO Pago (codigo_de_pago,tipo_pago)
VALUES ("P001","Efectivo");
INSERT INTO Habitacion (habitacion_id,num_habitacion,tipo_habitacion)
VALUES ("H001", 234,"individual");
INSERT INTO Codigos (codigo_reserva, codigo_de_pago,numero_cedula,habitacion_id)
VALUES ("R001","P001",101170698,"H001");


