CREATE DATABASE restaurant_reservations;

USE restaurant_reservations;

CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    rol ENUM('gerente', 'empleado', 'cliente') NOT NULL
);

CREATE TABLE reservations (
    id INT AUTO_INCREMENT PRIMARY KEY,        
    customer_name VARCHAR(100) NOT NULL,            
    reservation_datetime DATETIME NOT NULL,   
    status VARCHAR(20) NOT NULL DEFAULT 'active',
    age INT,
    total_cost FLOAT,
    id_reservation VARCHAR(100) UNIQUE
);

INSERT INTO users (name, email, password, rol) VALUES 
('Mario Contreras', 'gerente@restaurant.com', '$2b$12$uASF7..9Go19a29PUSyoeeuVZBrTEbt6e6Jac6jIGzCi9XhAWyRcu', 'gerente'),
('Alberto Martinez', 'empleado@restaurant.com', '$2b$12$S/1mSrUJVzZsLILcPicShOPsVgT8Zx00hClKab5fbxtxiceZCbsrO', 'empleado');

INSERT INTO reservations (customer_name, reservation_datetime, status, age, total_cost, id_reservation) VALUES 
('Jane Velez', '2024-06-10 20:00:00', 'activa', 30, 5.0, 'Reserva#1'),
('Roberto Sánchez', '2024-06-12 05:30:00', 'confirmada', 45, 5.0, 'Reserva#2'),
('Ana Garcia', '2024-06-13 14:00:00', 'confirmada', 55, 4.5, 'Reserva#3'),
('David Garces', '2024-06-20 13:15:00', 'cancelada', 65, 4.0, 'Reserva#4'),
('Jaime Cortez', '2024-07-21 15:00:00', 'pendiente', 25, 5.0, 'Reserva#5'),
('Jessica ', '2024-06-11 09:30:00', 'activa', 2, 0.0, 'Reserva#6'),
('Michael Ramirez', '2024-07-15 10:30:00', 'pendiente', 35, 5.0, 'Reserva#7'),
('Laura Martinez', '2024-07-18 16:45:00', 'cancelada', 29, 5.0, 'Reserva#8'),
('Olivia Ramos', '2024-07-19 19:20:00', 'confirmada', 40, 5.0, 'Reserva#9'),
('Esteban Gonzalez', '2024-07-22 08:15:00', 'activa', 60, 4.0, 'Reserva#10');
