CREATE DATABASE Hoteles;

USE Hoteles;



 

 ALTER TABLE habitacion ADD COLUMN disponible BOOLEAN;

# Este ALTER modifica la columna tipo_habitacion, antes estaba en VARCHAR y ahora en TEXT.
 ALTER TABLE habitacion MODIFY tipo_habitacion TEXT;

