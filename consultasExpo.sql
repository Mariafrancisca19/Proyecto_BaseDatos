# Consultas SQL (Queries):
# 1) Consulta para obtener los hoteles con mayor número de reservas. (hotel, reserva)
SELECT hotel.nombre AS 'Hotel', COUNT(reserva.razon_social) 'Cantidad de reservas'
FROM hotel
JOIN reserva
ON hotel.razon_social = reserva.razon_social
GROUP BY hotel.razon_social
ORDER BY 'Cantidad de reservas' DESC;

# 2) Consulta para contar cuántas habitaciones disponibles hay en un hotel específico en una fecha dada. (habitacion, hotel, reserva)
SELECT hotel.nombre, COUNT(habitacion.disponible) AS 'Habitaciones disponibles'
FROM habitacion
INNER JOIN hotel ON hotel.razon_social = habitacion.razon_social
INNER JOIN reserva ON reserva.habitacion_id = habitacion.habitacion_id
WHERE fecha_salida < '2024-07-11' AND hotel.razon_social = 'RS001';

SELECT * FROM reserva;
SELECT * FROM habitacion;

# 3) Consulta para buscar hoteles por nombre.
SELECT * FROM hotel
WHERE nombre = 'Sheraton';
# 4) Consulta para buscar hoteles cuya ubicación comienza con un texto específico. (like)
SELECT * FROM hotel
WHERE ubicacion LIKE 'M%';

# 5) Consulta para buscar hoteles cuya ubicación termina con un texto específico.
SELECT * FROM hotel
WHERE ubicacion like '%na';

# 6) Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior. (reserva, usuario) - julio
SELECT codigo_reserva, fecha_llegada, habitacion_id, razon_social, correo
FROM reserva
INNER JOIN usuarios
ON reserva.id_usuario = usuarios.id_usuario
WHERE correo = 'aconde@correo.com' AND MONTH(reserva.fecha_llegada) = MONTH(CURRENT_DATE() - INTERVAL 1 MONTH);

SELECT * FROM reserva;

# 7) Consulta para calcular el promedio de reservas diarias en un hotel.
SELECT AVG(reservas_diarias) AS 'Promedio'
FROM(
    SELECT COUNT(fecha_llegada) as reservas_diarias FROM reserva
    INNER JOIN hotel
    ON hotel.razon_social = reserva.razon_social
    GROUP BY(fecha_llegada)) as reservas;

# 8) Consulta para identificar el hotel con la mayor ocupación en el mes anterior.
SELECT hotel.nombre AS 'Hotel', COUNT(habitacion.disponible) 'Ocupación'
FROM hotel
INNER JOIN habitacion ON hotel.razon_social = habitacion.razon_social
INNER JOIN reserva ON reserva.habitacion_id = habitacion.habitacion_id
WHERE habitacion.disponible = 'No disponible' AND MONTH(Reserva.fecha_llegada) = MONTH(CURRENT_DATE()-INTERVAL 1 MONTH)
GROUP BY hotel.nombre;

# 9) Consulta para listar los hoteles que tienen habitaciones disponibles pero no han sido reservadas en el último mes.
SELECT Hotel.nombre, Habitacion.habitacion_id, Reserva.fecha_salida 
FROM Hotel
INNER JOIN Habitacion 
ON Hotel.razon_social = Habitacion.razon_social
LEFT JOIN Reserva 
ON Reserva.habitacion_id = Habitacion.habitacion_id
WHERE Reserva.fecha_salida >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

