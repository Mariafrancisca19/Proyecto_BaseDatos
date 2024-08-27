CREATE TABLE Administrador (codigo_admi VARCHAR(10) PRIMARY KEY,
nombre VARCHAR (60),
apellido VARCHAR (60),
correo VARCHAR (60) UNIQUE);

CREATE TABLE Clientes (numero_cedula INT PRIMARY KEY,
nombre VARCHAR (60),
apellido VARCHAR (60),
correo VARCHAR(60) UNIQUE);

# Se modificó Hotel y Reserva, se añadieron llaves foráneas

CREATE TABLE Hotel (razon_social VARCHAR(10) PRIMARY KEY ,
nombre VARCHAR(60),
ubicacion VARCHAR(60),
codigo_reserva VARCHAR(10), FOREIGN KEY(codigo_reserva) REFERENCES Reserva(codigo_reserva),
habitacion_id VARCHAR(10), FOREIGN KEY (habitacion_id) REFERENCES Habitacion (habitacion_id),
numero_cedula INT, FOREIGN KEY (numero_cedula) REFERENCES Clientes (numero_cedula));

CREATE TABLE Reserva (
codigo_reserva VARCHAR(10) PRIMARY KEY,
fecha_llegada DATE,
fecha_salida DATE,
habitacion_id VARCHAR(10), FOREIGN KEY(habitacion_id) REFERENCES Habitacion(habitacion_id),
numero_cedula INT,FOREIGN KEY (numero_cedula) REFERENCES Clientes (numero_cedula),
codigo_de_pago VARCHAR (10), FOREIGN KEY (codigo_de_pago) REFERENCES Pago (codigo_de_pago));

SELECT * FROM Reserva;

--Crear llave foranea con ALTER a una tabla
ALTER TABLE Reserva
  ADD COLUMN razon_social VARCHAR(20),
  ADD FOREIGN KEY razon_social(razon_social) REFERENCES Hotel(razon_social) ON DELETE CASCADE;

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
habitacion_id VARCHAR(10), FOREIGN KEY(habitacion_id) REFERENCES Habitacion(habitacion_id));

CREATE TABLE clientes_eliminados (numero_cedula INT PRIMARY KEY,
nombre VARCHAR (60),
apellido VARCHAR (60),
correo VARCHAR(60) UNIQUE);

CREATE TABLE Notificaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_notificacion VARCHAR(50),
    mensaje TEXT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);