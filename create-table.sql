CREATE DATABASE Hoteles;

use Hoteles;

CREATE TABLE Usuarios (id_usuario VARCHAR(20) PRIMARY KEY, 
nombre VARCHAR(20),
apellido VARCHAR(20),
correo VARCHAR(100) UNIQUE,
tel TEXT);
CREATE TABLE Administrador (id_administrador INT PRIMARY KEY AUTO_INCREMENT,
id_usuario VARCHAR(20), FOREIGN KEY(id_usuario) REFERENCES Usuarios(id_usuario));

# Se modificó Hotel y Reserva, se añadieron llaves foráneas
CREATE TABLE Hotel (razon_social VARCHAR(10) PRIMARY KEY ,
nombre VARCHAR(60),
ubicacion VARCHAR(60),
codigo_reserva VARCHAR(10), FOREIGN KEY(codigo_reserva) REFERENCES Reserva(codigo_reserva),
habitacion_id VARCHAR(10), FOREIGN KEY (habitacion_id) REFERENCES Habitacion (habitacion_id),
id_usuario VARCHAR(20), FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario));

CREATE TABLE Reserva (
codigo_reserva VARCHAR(10) PRIMARY KEY,
fecha_llegada DATE,
fecha_salida DATE,
habitacion_id VARCHAR(10), FOREIGN KEY(habitacion_id) REFERENCES Habitacion(habitacion_id),
id_usuario VARCHAR(20),FOREIGN KEY (id_usuario) REFERENCES Usuarios (id_usuario),
codigo_de_pago VARCHAR (10), FOREIGN KEY (codigo_de_pago) REFERENCES Pago (codigo_de_pago));

SELECT * FROM Reserva;

--Crear llave foranea con ALTER a una tabla - Tabla Reserva
ALTER TABLE Reserva
  ADD COLUMN razon_social VARCHAR(20),
  ADD FOREIGN KEY razon_social(razon_social) REFERENCES Hotel(razon_social) ON DELETE CASCADE;


SELECT * FROM Reserva;
CREATE TABLE Pago (codigo_de_pago VARCHAR(10) PRIMARY KEY,
tipo_pago VARCHAR(10));

CREATE TABLE Habitacion (habitacion_id  VARCHAR(10) PRIMARY KEY,
num_habitacion INT,
tipo_habitacion VARCHAR (10));

CREATE TABLE Codigos (codigo_reserva VARCHAR(10) PRIMARY KEY,
codigo_de_pago VARCHAR(10), 
FOREIGN KEY(codigo_de_pago) REFERENCES Pago(codigo_de_pago),
id_usuario VARCHAR(20), 
FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
habitacion_id VARCHAR(10), FOREIGN KEY(habitacion_id) REFERENCES Habitacion(habitacion_id));

--Crear llave foranea con ALTER a una tabla - Tabla Codigos
ALTER TABLE Codigos
  ADD COLUMN razon_social VARCHAR(20),
  ADD FOREIGN KEY razon_social(razon_social) REFERENCES Hotel(razon_social) ON DELETE CASCADE;

ALTER TABLE habitacion
ADD COLUMN codigo_reserva VARCHAR(20),
ADD FOREIGN KEY codigo_reserva(codigo_reserva) REFERENCES reserva(codigo_reserva) ON DELETE CASCADE;  

SELECT * FROM Codigos;

# Tabla donde se agregan los datos que dispara el TRIGGER
CREATE TABLE Notificaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_notificacion VARCHAR(50),
    mensaje TEXT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP); 














