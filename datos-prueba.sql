--  Insertar datos en tablas DATOS DE PRUEBA
INSERT INTO Administrador (id_usuario) 
VALUES ("Ale23");
INSERT INTO Usuarios (id_usuario, nombre, apellido, correo, tel) 
VALUES ("Jose29","Jose","Benett","jbennet@unn.com", 23451278);
INSERT INTO Usuarios(id_usuario, nombre, apellido, correo, tel)
VALUES ("Ale23","Alejandra","Conde","aconde@unn.com", 84209727);
INSERT INTO Hotel (razon_social, nombre, ubicacion, codigo_reserva, habitacion_id, id_usuario) 
VALUES ("H1357","Sheraton","Zona A", "R001", "H001", 'Ale23');
INSERT INTO Reserva (codigo_reserva, fecha_llegada,fecha_salida, habitacion_id, id_usuario, codigo_de_pago)
VALUES ("R001","2024-11-23","2024-11-26", "H001", 'Ale23', "P001");
INSERT INTO Pago (codigo_de_pago,tipo_pago)
VALUES ("P001","Efectivo");
INSERT INTO Habitacion (habitacion_id,num_habitacion,tipo_habitacion)
VALUES ("H001", 234,"individual");
INSERT INTO Codigos (codigo_reserva, codigo_de_pago, id_usuario, habitacion_id)
VALUES ("R001", "P001", 'Ale23', "H001");


