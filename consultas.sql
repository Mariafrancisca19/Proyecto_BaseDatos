# Consultas Francisca

SELECT hotel.nombre AS "Hotel",
COUNT(reserva.codigo_reserva) AS "Numero de Reservas"
FROM Hotel 
JOIN Reserva 
ON hotel.razon_social = reserva.razon_social
GROUP BY 
hotel.razon_social
ORDER BY "Numero de Reservas" DESC;

-- Cuántas habitaciones disponibles hay en un hotel específico en una fecha dada.

SELECT COUNT(habitacion.disponible) AS Habitaciones_Disponibles, hotel.nombre FROM habitacion 
INNER JOIN hotel ON habitacion.razon_social = hotel.razon_social
INNER JOIN reserva ON reserva.habitacion_id = habitacion.habitacion_id
WHERE disponible = "Disponible"  AND reserva.fecha_salida < "2024-12-09" AND hotel.razon_social = "RS002"
GROUP BY hotel.nombre;

-- ○ buscar hoteles por nombre.

SELECT * FROM hotel
WHERE nombre = 'Sheraton'

-- ○ buscar hoteles cuya ubicación comienza con un texto específico.

SELECT ubicacion FROM hotel
WHERE ubicacion like 'M%'

-- ○ buscar hoteles cuya ubicación termina con un texto específico.

SELECT ubicacion FROM hotel
WHERE ubicacion like '%e'

# Consultas Alejandra

# 6) Consulta para buscar hoteles cuya ubicación termina con un texto específico.
SELECT *
FROM Hotel
WHERE ubicacion LIKE '%na';
# 7) Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
SELECT Reserva.codigo_reserva, Reserva.fecha_llegada, Reserva.habitacion_id, Reserva.razon_social, Usuarios.correo
FROM Reserva
INNER JOIN Usuarios 
ON Reserva.id_usuario = Usuarios.id_usuario 
WHERE Usuarios.correo = 'jhernandez@correo.com' AND MONTH(Reserva.fecha_llegada) = MONTH (CURRENT_DATE() - INTERVAL 1 MONTH);

# 8) Consulta para calcular el promedio de reservas diarias en un hotel. ADASDASFSDF
SELECT AVG(reservas_diarias) AS promedio_reservas    
FROM (
    SELECT COUNT(fecha_llegada) AS reservas_diarias FROM reserva
    INNER JOIN Hotel ON reserva.razon_social = hotel.razon_social
    GROUP BY DATE(fecha_llegada)) AS reservas_dia

# 9) Consulta para identificar el hotel con la mayor ocupación en el mes anterior.
SELECT Hotel.razon_social, Hotel.nombre, Habitacion.habitacion_id,Habitacion.disponible, Reserva.fecha_llegada
FROM Hotel
INNER JOIN Habitacion 
ON Hotel.razon_social = Habitacion.razon_social
LEFT JOIN Reserva ON Reserva.habitacion_id = Habitacion.habitacion_id
WHERE Habitacion.disponible = "Disponible" AND MONTH (Reserva.fecha_llegada) = MONTH (CURRENT_DATE() - INTERVAL 1 MONTH);

# 10) Consulta para listar los hoteles que tienen habitaciones disponibles pero no han sido 
# reservadas en el último mes.
SELECT Hotel.nombre, Habitacion.disponible, Habitacion.habitacion_id, Reserva.fecha_salida 
FROM Hotel
INNER JOIN Habitacion 
ON Hotel.razon_social = Habitacion.razon_social
LEFT JOIN Reserva 
ON Reserva.habitacion_id = Habitacion.habitacion_id
WHERE Habitacion.disponible = "Disponible" AND Reserva.fecha_salida >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

# Mostrar el nombre del hotel, la ubicación y el nombre de los clientes 
# que han hecho una reserva en ese hotel
SELECT hotel.nombre, hotel.ubicacion, usuarios.nombre
FROM hotel
INNER JOIN usuarios
ON hotel 

SELECT * FROM hotel;
SELECT * FROM usuarios;



# Mostrar los hoteles en los que un usuario específico ha hecho reservas filtrar por id de usuario.


# Mostrar la cantidad total de habitaciones reservadas por cada usuario.


# Muestra el tipo de pago realizado por los usuarios que han reservado habitaciones,
# junto con el nombre del usuario 