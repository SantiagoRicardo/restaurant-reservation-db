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
    number_of_people INT NOT NULL,            
    reservation_datetime DATETIME NOT NULL,   
    status VARCHAR(20) NOT NULL DEFAULT 'active',
    age INT,
    total_cost FLOAT,
    id_reservation VARCHAR(100) UNIQUE
);

INSERT INTO users (name, email, password, rol) VALUES 
('Mario Contreras', 'gerente@restaurant.com', 'gerente123', 'gerente'),
('Alberto Martinez', 'empleado@restaurant.com', 'empleado123', 'empleado');

INSERT INTO reservations (customer_name, number_of_people, reservation_datetime, status, age, total_cost, id_reservation) VALUES 
('Jane Velez', 2, '2024-06-10 20:00:00', 'activa', 30, 5.0, 'Reserva#1'),
('Roberto Sánchez', 7, '2024-06-12 05:30:00', 'confirmada', 45, 5.0, 'Reserva#2'),
('Ana Garcia', 8, '2024-06-13 14:00:00', 'confirmada', 55, 4.5, 'Reserva#3'),
('David Garces', 1, '2024-06-20 13:15:00', 'cancelada', 65, 4.0, 'Reserva#4'),
('Jaime Cortez', 4, '2024-07-21 15:00:00', 'pendiente', 25, 5.0, 'Reserva#5'),
('Jessica ', 3, '2024-06-11 09:30:00', 'activa', 2, 0.0, 'Reserva#6'),
('Michael Ramirez', 5, '2024-07-15 10:30:00', 'pendiente', 35, 5.0, 'Reserva#7'),
('Laura Martinez', 6, '2024-07-18 16:45:00', 'cancelada', 29, 5.0, 'Reserva#8'),
('Olivia Ramos', 2, '2024-07-19 19:20:00', 'confirmada', 40, 5.0, 'Reserva#9'),
('Esteban Gonzalez', 3, '2024-07-22 08:15:00', 'activa', 60, 4.0, 'Reserva#10');
