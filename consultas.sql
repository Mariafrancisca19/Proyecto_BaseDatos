USE Hoteles;

SELECT * FROM Hotel;

# 1) Consulta para buscar hoteles cuya ubicación termina con un texto específico.
SELECT ubicacion
FROM Hotel
WHERE ubicacion LIKE '%na';

# 2) Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
SELECT *
FROM Reserva
INNER JOIN Usuarios
ON Usuarios.id_usuario = Reserva.codigo_reserva
WHERE Reserva.id_usuario = 'Ale23';


SELECT * FROM Reserva;
SELECT * FROM Usuarios;


# 3) Consulta para calcular el promedio de reservas diarias en un hotel.

# 4) Consulta para identificar el hotel con la mayor ocupación en el mes anterior.

# 5) Consulta para listar los hoteles que tienen habitaciones disponibles pero no han sido 
# reservadas en el último mes.




# Consulta para obtener los hoteles con mayor número de reservas.



# Consulta para contar cuántas habitaciones disponibles hay en un hotel específico en una fecha dada.
# Consulta para buscar hoteles por nombre.
# Consulta para buscar hoteles cuya ubicación comienza con un texto específico.
