
CREATE DATABASE restaurant_reservations;

USE restaurant_reservations;

CREATE TABLE reservations (
    id INT AUTO_INCREMENT PRIMARY KEY,        
    customer_name VARCHAR(100) NOT NULL,      
    number_of_people INT NOT NULL,            
    reservation_datetime DATETIME NOT NULL,   
    status VARCHAR(20) NOT NULL DEFAULT 'active'  
);

INSERT INTO reservations (customer_name, number_of_people, reservation_datetime, status)
VALUES 
('Jane Smith', 2, '2024-06-10 20:00:00', 'Active'),
('Roberto Sánchez', 7, '2024-06-12 05:30:00', 'Confirmed'),
('Ana Garcia', 8, '2024-06-13 14:00:00', 'Confirmed'),
('David Williams', 1, '2024-06-20 13:15:00', 'Cancelled'),
('Emily Johnson', 4, '2024-07-21 15:00:00', 'Pending'),
('Jessica Miller', 3, '2024-06-11 09:30:00', 'Active'),
('Michael Brown', 5, '2024-07-15 10:30:00', 'Pending'),
('Laura Martinez', 6, '2024-07-18 16:45:00', 'Cancelled'),
('Olivia Thomas', 2, '2024-07-19 19:20:00', 'Confirmed'),
('Ethan Gonzalez', 3, '2024-07-22 08:15:00', 'Active');
