
# INDEX que muestra los hoteles según la ubicación
CREATE INDEX ubicacion_hotel
ON Hotel (ubicacion);

SELECT * FROM Hotel WHERE ubicacion = 'Santa Ana';

# INDEX que muestra la disponibilidad de habitaciones según el hotel.
CREATE INDEX habitaciones_dispo
ON Habitacion (disponible, razon_social);

SELECT * FROM Habitacion WHERE disponible = 'Disponible' AND razon_social = 'RS001';



