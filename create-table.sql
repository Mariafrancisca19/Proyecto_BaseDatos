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