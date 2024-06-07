
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
VALUES ('John Doe', 4, '2024-06-10 19:00:00', 'active');

INSERT INTO reservations (customer_name, number_of_people, reservation_datetime, status)
VALUES ('Jane Smith', 2, '2024-06-10 20:00:00', 'active');
