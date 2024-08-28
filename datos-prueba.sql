--  Insertar datos en tablas DATOS DE PRUEBA
INSERT INTO Administrador (id_usuario) 
VALUES ('Ale23'),
('Mari01'),
('Juan88'),
('Luz33'),
('Carlos9'),
('Ana64'),
('David44'),
('Sofi92'),
('Luis57'),
('Paula81'),
('Javi10'),
('Esther5'),
('Andres7'),
('Clara45'),
('Raul11'),
('Gabri77'),
('Pedro29'),
('Isabel6'),
('Rosa32'),
('Jose20');
INSERT INTO Usuarios (id_usuario, nombre, apellido, correo, tel) 
VALUES ('Ale23', 'Alejandra', 'Conde', 'aconde@correo.com', '84209727'),
('Mari01', 'Mariana', 'Gutiérrez', 'mgutierrez@correo.com', '84720183'),
('Juan88', 'Juan', 'Paredes', 'jparedes@correo.com', '83019475'),
('Luz33', 'Luz', 'Gómez', 'lgomez@correo.com', '84029712'),
('Carlos9', 'Carlos', 'Montoya', 'cmontoya@correo.com', '82740192'),
('Ana64', 'Ana', 'Torres', 'atorres@correo.com', '83129475'),
('David44', 'David', 'Ramírez', 'dramirez@correo.com', '83910482'),
('Sofi92', 'Sofía', 'Méndez', 'smendez@correo.com', '84820193'),
('Luis57', 'Luis', 'Rojas', 'lrojas@correo.com', '83201748'),
('Paula81', 'Paula', 'Flores', 'pflores@correo.com', '84509123'),
('Javi10', 'Javier', 'López', 'jlopez@correo.com', '84102938'),
('Esther5', 'Esther', 'Ruiz', 'eruiz@correo.com', '83920471'),
('Andres7', 'Andrés', 'Vega', 'avega@correo.com', '83219074'),
('Clara45', 'Clara', 'Núñez', 'cnunez@correo.com', '84620138'),
('Raul11', 'Raúl', 'Moreno', 'rmoreno@correo.com', '83710293'),
('Gabri77', 'Gabriela', 'Sánchez', 'gsanchez@correo.com', '84309281'),
('Pedro29', 'Pedro', 'Cruz', 'pcruz@correo.com', '83471029'),
('Isabel6', 'Isabel', 'Castro', 'icastro@correo.com', '84201937'),
('Rosa32', 'Rosa', 'Ortiz', 'rortiz@correo.com', '83627104'),
('Jose20', 'José', 'Hernández', 'jhernandez@correo.com', '84107392');

SELECT * FROM Reserva;
SELECT * FROM Hotel;
INSERT INTO Hotel (razon_social, nombre, ubicacion, codigo_reserva, habitacion_id, id_usuario) 
VALUES ('RS001', 'Hotel Sol', 'Santa Ana', 'R001', 'H001', 'Ale23'),
('RS002', 'Hotel Luna', 'Tamarindo', 'R002', 'H002', 'Mari01'),
('RS003', 'Hotel Estrella', 'Monteverde', 'R003', 'H003', 'Juan88'),
('RS004', 'Hotel Mar', 'San Jose', 'R004', 'H004', 'Luz33'),
('RS005', 'Hotel Montaña', 'Puntarenas', 'R005', 'H005', 'Carlos9'),
('RS006', 'Hotel Selva', 'La Fortuna', 'R006', 'H006', 'Ana64'),
('RS007', 'Hotel Lago', 'Nosara', 'R007', 'H007', 'David44'),
('RS008', 'Hotel Nube', 'Cahuita', 'R008', 'H008', 'Sofi92'),
('RS009', 'Hotel Bosque', 'San José', 'R009', 'H009', 'Luis57'),
('RS010', 'Hotel Desierto', 'Cahuita', 'R010', 'H010', 'Paula81'),
('RS011', 'Hotel Roca', 'Puntarenas', 'R011', 'H011', 'Javi10'),
('RS012', 'Hotel Cielo', 'San José', 'R012', 'H012', 'Esther5'),
('RS013', 'Hotel Brisa', 'Nosara', 'R013', 'H013', 'Andres7'),
('RS014', 'Hotel Arena', 'San José', 'R014', 'H014', 'Clara45'),
('RS015', 'Hotel Viento', 'Puntarenas', 'R015', 'H015', 'Raul11'),
('RS016', 'Hotel Fuego', 'Nosara', 'R016', 'H016', 'Gabri77'),
('RS017', 'Hotel Solsticio', 'La Fortuna', 'R017', 'H017', 'Pedro29'),
('RS018', 'Hotel Aurora', 'Cahuita', 'R018', 'H018', 'Isabel6'),
('RS019', 'Hotel Horizonte', 'San José', 'R019', 'H019', 'Rosa32'),
('RS020', 'Hotel Diamante', 'La Fortuna', 'R020', 'H020', 'Jose20');
INSERT INTO Reserva (codigo_reserva, fecha_llegada, fecha_salida, habitacion_id, id_usuario, codigo_de_pago, razon_social)
VALUES ('R001', '2024-09-01', '2024-09-05', 'H001', 'Ale23', 'P001', 'RS001'),
('R002', '2024-09-02', '2024-09-06', 'H002', 'Mari01', 'P002', 'RS002'),
('R003', '2024-09-03', '2024-09-07', 'H003', 'Juan88', 'P003', 'RS003'),
('R004', '2024-09-04', '2024-09-08', 'H004', 'Luz33', 'P004', 'RS004'),
('R005', '2024-09-05', '2024-09-09', 'H005', 'Carlos9', 'P005', 'RS005'),
('R006', '2024-09-06', '2024-09-10', 'H006', 'Ana64', 'P006', 'RS006'),
('R007', '2024-09-07', '2024-09-11', 'H007', 'David44', 'P007', 'RS007'),
('R008', '2024-09-08', '2024-09-12', 'H008', 'Sofi92', 'P008', 'RS008'),
('R009', '2024-09-09', '2024-09-13', 'H009', 'Luis57', 'P009', 'RS009'),
('R010', '2024-09-10', '2024-09-14', 'H010', 'Paula81', 'P010', 'RS010'),
('R011', '2024-09-11', '2024-09-15', 'H011', 'Javi10', 'P011', 'RS011'),
('R012', '2024-09-12', '2024-09-16', 'H012', 'Esther5', 'P012', 'RS012'),
('R013', '2024-09-13', '2024-09-17', 'H013', 'Andres7', 'P013', 'RS013'),
('R014', '2024-09-14', '2024-09-18', 'H014', 'Clara45', 'P014', 'RS014'),
('R015', '2024-09-15', '2024-09-19', 'H015', 'Raul11', 'P015', 'RS015'),
('R016', '2024-09-16', '2024-09-20', 'H016', 'Gabri77', 'P016', 'RS016'),
('R017', '2024-09-17', '2024-09-21', 'H017', 'Pedro29', 'P017', 'RS017'),
('R018', '2024-09-18', '2024-09-22', 'H018', 'Isabel6', 'P018', 'RS018'),
('R019', '2024-09-19', '2024-09-23', 'H019', 'Rosa32', 'P019', 'RS019'),
('R020', '2024-09-20', '2024-09-24', 'H020', 'Jose20', 'P020', 'RS020');

INSERT INTO Pago (codigo_de_pago,tipo_pago)
VALUES ('P001', 'Tarjeta'),
('P002', 'Efectivo'),
('P003', 'Tarjeta'),
('P004', 'Efectivo'),
('P005', 'Tarjeta'),
('P006', 'Efectivo'),
('P007', 'Tarjeta'),
('P008', 'Efectivo'),
('P009', 'Tarjeta'),
('P010', 'Efectivo'),
('P011', 'Tarjeta'),
('P012', 'Efectivo'),
('P013', 'Tarjeta'),
('P014', 'Efectivo'),
('P015', 'Tarjeta'),
('P016', 'Efectivo'),
('P017', 'Tarjeta'),
('P018', 'Efectivo'),
('P019', 'Tarjeta'),
('P020', 'Efectivo');
INSERT INTO Habitacion (habitacion_id,num_habitacion,tipo_habitacion)
VALUES ('H001', 101, 'Individual'),
('H002', 102, 'Matrimonial'),
('H003', 103, 'Suite'),
('H004', 104, 'Individual'),
('H005', 105, 'Matrimonial'),
('H006', 106, 'Suite'),
('H007', 107, 'Individual'),
('H008', 108, 'Matrimonial'),
('H009', 109, 'Suite'),
('H010', 110, 'Individual'),
('H011', 111, 'Matrimonial'),
('H012', 112, 'Suite'),
('H013', 113, 'VIP'),
('H014', 114, 'Matrimonial'),
('H015', 115, 'Suite'),
('H016', 116, 'VIP'),
('H017', 117, 'Matrimonial'),
('H018', 118, 'Suite'),
('H019', 119, 'VIP'),
('H020', 120, 'Matrimonial');

INSERT INTO Codigos (codigo_reserva, codigo_de_pago, id_usuario, habitacion_id, razon_social)
VALUES ("R001", "P001", 'Ale23', "H001", "RS001"),
("R002", "P002", 'Mari01', "H002", "RS002"),
("R003", "P003", 'Juan88', "H003", "RS003"),
("R004", "P004", 'Luz33', "H004", "RS004"),
("R005", "P005", 'Carlos9', "H005", "RS005"),
("R006", "P006", 'Ana64', "H006", "RS006"),
("R007", "P007", 'David44', "H007", "RS007"),
("R008", "P008", 'Sofi92', "H008", "RS008"),
("R009", "P009", 'Luis57', "H009", "RS009"),
("R010", "P010", 'Paula81', "H010", "RS010"),
("R011", "P011", 'Javi10', "H011", "RS011"),
("R012", "P012", 'Esther5', "H012", "RS012"),
("R013", "P013", 'Andres7', "H013", "RS013"),
("R014", "P014", 'Clara45', "H014", "RS014"),
("R015", "P015", 'Raul11', "H015", "RS015"),
("R016", "P016", 'Gabri77', "H016", "RS016"),
("R017", "P017", 'Pedro29', "H017", "RS017"),
("R018", "P018", 'Isabel6', "H018", "RS018"),
("R019", "P019", 'Rosa32', "H019", "RS019"),
("R020", "P020", 'Jose20', "H020", "RS020");
