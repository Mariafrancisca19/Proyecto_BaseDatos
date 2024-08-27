CREATE DATABASE Hoteles;

USE Hoteles;



 

 ALTER TABLE habitacion ADD COLUMN disponible BOOLEAN;

# Este ALTER modifica la columna tipo_habitacion, antes estaba en VARCHAR y ahora en TEXT.
 ALTER TABLE habitacion MODIFY tipo_habitacion TEXT;

# Este alter coloca un valor por defecto a la columna disponible y lo pone en 0
ALTER TABLE habitacion ALTER COLUMN disponible SET DEFAULT 0;