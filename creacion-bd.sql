CREATE DATABASE Hoteles;

USE Hoteles;
# Borrar tablas
DROP TABLE Administrador;
DROP TABLE Clientes;
DROP TABLE Hotel;
DROP TABLE Reserva;
DROP TABLE Pago;
DROP TABLE Habitacion;
DROP TABLE Reserva;

# Seleccionar tablas
SELECT * FROM Administrador;
SELECT * FROM Clientes;
SELECT * FROM Hotel;
SELECT * FROM Reserva;
SELECT * FROM Pago;
SELECT * FROM Habitacion;
SELECT * FROM Codigos;
--  Insertar datos en tablas
INSERT INTO Administrador (codigo_admi,nombre, apellido,correo) VALUES ("A001","Gabriel","Garcia","garcia@correo.com");
INSERT INTO Clientes (numero_cedula, nombre, apellido, correo) VALUES (101170698,"Maria","Gonzales","gonza@unn.com");
INSERT INTO Hotel (razon_social, nombre, ubicacion) VALUES ("H1357","Sheraton","Zona A");
INSERT INTO Reserva (codigo_reserva, fecha_llegada,fecha_salida, habitacion_id, numero_cedula, codigo_de_pago) VALUES ("R001","2024-11-23","2024-11-26", "H001", 101170698, "P001");
INSERT INTO Pago (codigo_de_pago,tipo_pago) VALUES ("P001","Efectivo");
INSERT INTO Habitacion (habitacion_id,num_habitacion,tipo_habitacion) VALUES ("H001", 234,"individual");
INSERT INTO Codigos (codigo_reserva, codigo_de_pago,numero_cedula,habitacion_id) VALUES ("R001","P001",101170698,"H001");


CREATE TABLE Administrador (codigo_admi VARCHAR(10) PRIMARY KEY,
nombre VARCHAR (60),
apellido VARCHAR (60),
correo VARCHAR (60) UNIQUE);

CREATE TABLE Clientes (numero_cedula INT PRIMARY KEY,
nombre VARCHAR (60),
apellido VARCHAR (60),
correo VARCHAR(60) UNIQUE);

CREATE TABLE Hotel (razon_social VARCHAR(10) PRIMARY KEY ,
nombre VARCHAR(60),
ubicacion VARCHAR(60));

CREATE TABLE Reserva (
codigo_reserva VARCHAR(10) PRIMARY KEY,
fecha_llegada DATE,
fecha_salida DATE,
habitacion_id VARCHAR(10), FOREIGN KEY(habitacion_id) REFERENCES Habitacion(habitacion_id),
numero_cedula INT,FOREIGN KEY (numero_cedula) REFERENCES Clientes (numero_cedula),
codigo_de_pago VARCHAR (10), FOREIGN KEY (codigo_de_pago) REFERENCES Pago (codigo_de_pago)
);

CREATE TABLE Pago (codigo_de_pago VARCHAR(10) PRIMARY KEY,
tipo_pago VARCHAR(10));

CREATE TABLE Habitacion (habitacion_id  VARCHAR(10) PRIMARY KEY,
num_habitacion INT,
tipo_habitacion VARCHAR (10));

CREATE TABLE Codigos (codigo_reserva VARCHAR(10) PRIMARY KEY,
codigo_de_pago VARCHAR(10), 
FOREIGN KEY(codigo_de_pago) REFERENCES Pago(codigo_de_pago),
numero_cedula INT, 
FOREIGN KEY (numero_cedula) REFERENCES Clientes(numero_cedula),
habitacion_id VARCHAR(10), FOREIGN KEY(habitacion_id) REFERENCES Habitacion(habitacion_id)
);
 

 ALTER TABLE habitacion ADD COLUMN disponible BOOLEAN;

 SELECT * FROM reserva;
 SELECT * FROM habitacion