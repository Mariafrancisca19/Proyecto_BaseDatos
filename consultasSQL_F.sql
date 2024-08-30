USE Hoteles;

-- consultas SQL
-- hoteles con mayor numero de reserva
-- Consulta para obtener los hoteles con el mayor número de reservas

SELECT 
    hotel.nombre AS Hotel,
    COUNT(reserva.codigo_reserva) AS "Numero de Reservas"
FROM 
    Hotel 
JOIN 
    Reserva ON hotel.razon_social = reserva.razon_social
GROUP BY 
    hotel.razon_social
ORDER BY 
    "Numero de Reservas" DESC;



-- ○ habitaciones disponibles hay en un hotel específico en una fecha dada.

SELECT COUNT(habitacion.disponible) AS Habitaciones_Disponibles, hotel.nombre FROM habitacion 
INNER JOIN hotel ON habitacion.razon_social = hotel.razon_social
INNER JOIN reserva ON reserva.habitacion_id = habitacion.habitacion_id
WHERE disponible = 1  AND reserva.fecha_salida < "2024-12-09" AND hotel.razon_social = "RS002"
GROUP BY hotel.nombre;

SELECT * FROM habitacion;
SELECT * FROM hotel;


-- ○ buscar hoteles por nombre.

SELECT ubicacion FROM hotel
WHERE ubicacion like 'Santa ANA%'

-- ○ buscar hoteles cuya ubicación comienza con un texto específico.

SELECT ubicacion FROM hotel
WHERE ubicacion like 'M%'

-- ○ buscar hoteles cuya ubicación termina con un texto específico.

SELECT ubicacion FROM hotel
WHERE ubicacion like '%e'
