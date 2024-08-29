USE Hoteles;

SELECT * FROM Hotel;

# 1) Consulta para buscar hoteles cuya ubicación termina con un texto específico.
SELECT ubicacion
FROM Hotel
WHERE ubicacion LIKE '%na';

# 2) Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
SELECT Reserva.codigo_reserva, Reserva.fecha_llegada, Reserva.habitacion_id, Reserva.razon_social, Usuarios.correo
FROM Reserva
INNER JOIN Usuarios 
ON Reserva.id_usuario = Usuarios.id_usuario 
WHERE Usuarios.correo = 'atorres@correo.com' AND MONTH(Reserva.fecha_llegada) = MONTH (CURRENT_DATE() - INTERVAL 1 MONTH);

SELECT * FROM Usuarios;
SELECT * FROM Reserva;
SELECT * FROM Hotel; 

# 3) Consulta para calcular el promedio de reservas diarias en un hotel.
    SELECT AVG(reservas_diarias) AS promedio_reservas
    FROM (
    SELECT COUNT(fecha_llegada) AS reservas_diarias FROM reserva
    INNER JOIN Hotel ON reserva.razon_social = hotel.razon_social
    GROUP BY DATE(fecha_llegada)
    ) AS reservas_dia


# 4) Consulta para identificar el hotel con la mayor ocupación en el mes anterior.

# 5) Consulta para listar los hoteles que tienen habitaciones disponibles pero no han sido 
# reservadas en el último mes.
