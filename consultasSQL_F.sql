USE Hoteles;

-- consultas SQL
-- hoteles con mayor numero de reserva
SELECT COUNT(reserva.razon_social) AS Cant_Reservas FROM reserva
INNER JOIN Hotel on Hotel.razon_social = Reserva.razon_social;


-- ○ habitaciones disponibles hay en un hotel específico en una fecha dada.

SELECT COUNT(habitacion.disponible) AS Habitaciones_Disponibles
FROM Habitacion


-- ○ buscar hoteles por nombre.

SELECT ubicacion FROM hotel
WHERE ubicacion like 'Santa ANA%'

-- ○ buscar hoteles cuya ubicación comienza con un texto específico.

SELECT ubicacion FROM hotel
WHERE ubicacion like 'M%'

-- ○ buscar hoteles cuya ubicación termina con un texto específico.

SELECT ubicacion FROM hotel
WHERE ubicacion like '%e'
