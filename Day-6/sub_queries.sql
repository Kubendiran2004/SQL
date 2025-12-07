CREATE DATABASE shopDB;
USE shopDB;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    customer_city VARCHAR(50)
);


CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers (customer_name, customer_city) VALUES
('Arun', 'Chennai'),
('Priya', 'Madurai'),
('Karthik', 'Coimbatore'),
('Meena', 'Chennai'),
('Rahul', 'Trichy');

INSERT INTO products (product_name, price) VALUES
('Laptop', 55000),
('Mouse', 500),
('Keyboard', 1500),
('Monitor', 12000),
('Headset', 2000);

INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1, 1, 1, '2024-01-05'),
(2, 2, 2, '2024-01-06'),
(1, 3, 1, '2024-01-07'),
(4, 4, 1, '2024-01-09'),
(3, 1, 1, '2024-01-10'),
(5, 2, 3, '2024-01-12');

-- single row sub query 

-- Q1:
select * from products where price > ( select avg(price) from products);

-- Q2:
select customer_name from customers where customer_id = (select customer_id from orders where order_date = (select min(order_date) from orders));

-- Q3:
select * from products where price = (select max(price) from products);

-- Q4:
select customer_name from customers where customer_id IN (select customer_id from orders where product_id IN (select product_id from products where price IN (select max(price) from products)));


-- multi column 
SELECT 
    o.order_id,
    c.customer_name,
    c.customer_city,
    p.product_name,
    o.quantity,
    o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;

