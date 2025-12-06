create database TASK1;
use TASK1;


CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    customer_phone VARCHAR(20)
);

INSERT INTO customers (customer_name, customer_phone)
VALUES 
('Arun', '9876543210'),
('Priya', '9123456780'),
('Karan', '9988776655'),
('Meena', '9876001234'),
('Rahul', '9090909090');


CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    product_price DECIMAL(10,2)
);

INSERT INTO products (product_name, product_price)
VALUES 
('Laptop', 55000),
('Mouse', 500),
('Keyboard', 1500),
('Monitor', 12000),
('Headset', 2000);


CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO orders (customer_id, product_id, order_date)
VALUES
(1, 1, '2024-01-05'),
(2, 2, '2024-01-06'),
(1, 3, '2024-01-07'),
(4, 5, '2024-01-09'),
(3, 1, '2024-01-10');



