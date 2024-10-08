DROP DATABASE Hoteles;
CREATE DATABASE Hoteles;
use Hoteles;
#TABLA USUARIOS
CREATE TABLE Usuarios (id_usuario VARCHAR(20) PRIMARY KEY, 
nombre VARCHAR(20),
apellido VARCHAR(20),
correo VARCHAR(100) UNIQUE,
tel TEXT);

#TABLA ADMI
CREATE TABLE Administrador (id_administrador INT PRIMARY KEY AUTO_INCREMENT,
id_usuario VARCHAR(20), FOREIGN KEY(id_usuario) REFERENCES Usuarios(id_usuario));

#TABLA HOTEL
CREATE TABLE Hotel (razon_social VARCHAR(10) PRIMARY KEY ,
nombre VARCHAR(60),
ubicacion VARCHAR(60));

#TABLA PAGO
CREATE TABLE Pago (codigo_de_pago VARCHAR(10) PRIMARY KEY,
tipo_pago VARCHAR(10));

#TABLA HABITACION
CREATE TABLE Habitacion (habitacion_id  VARCHAR(10) PRIMARY KEY,
num_habitacion INT,
tipo_habitacion VARCHAR (20),
disponible VARCHAR(15) DEFAULT 'Disponible',
razon_social VARCHAR(20),
FOREIGN KEY (razon_social) REFERENCES Hotel (razon_social));

#TABLA RESERVA
CREATE TABLE Reserva (
codigo_reserva VARCHAR(10) PRIMARY KEY,
fecha_llegada DATE,
fecha_salida DATE,
habitacion_id VARCHAR(10), FOREIGN KEY(habitacion_id) REFERENCES Habitacion(habitacion_id),
id_usuario VARCHAR(20),FOREIGN KEY (id_usuario) REFERENCES Usuarios (id_usuario),
codigo_de_pago VARCHAR (10), FOREIGN KEY (codigo_de_pago) REFERENCES Pago (codigo_de_pago));

--Crear llave foranea con ALTER a una tabla - Tabla Reserva
ALTER TABLE Reserva
  ADD COLUMN razon_social VARCHAR(20),
  ADD FOREIGN KEY razon_social(razon_social) REFERENCES Hotel(razon_social) ON DELETE CASCADE;

#TABLA CODIGOS
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


# Tabla donde se agregan los datos que dispara el TRIGGER
CREATE TABLE Notificaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_notificacion VARCHAR(50),
    mensaje TEXT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
