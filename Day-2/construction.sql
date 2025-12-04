create database construction;
use construction;

CREATE TABLE materials(
  id INT PRIMARY KEY AUTO_INCREMENT,
  material_name VARCHAR(50),
  unit_price DECIMAL(10,2),
  supplier VARCHAR(50),
  quantity INT
);

INSERT INTO materials (material_name, unit_price, supplier, quantity) VALUES
('Cement Bag', 450.00, 'Ramco', 100),
('Steel Rod 12mm', 750.00, 'JSW Steel', 50),
('Sand Load', 3500.00, 'Local Supplier', 10),
('Bricks', 8.50, 'Brick House', 5000),
('Tiles', 50.00, 'Kajaria', 400),
('Paint Bucket', 1200.00, 'Asian Paints', 30),
('Pipes PVC', 300.00, 'Supreme', 100),
('Glass Sheets', 900.00, 'Sai Glass', 20),
('Wood Plank', 600.00, 'Timber Depot', 50),
('Wire Bundle', 700.00, 'Finolex', 80);

UPDATE materials 
SET supplier = 'ultra tech'
WHERE id = 1;

DELETE FROM materials WHERE id=5;

INSERT INTO materials (id,material_name, unit_price, supplier, quantity) 
VALUES (5,'Tiles', 50.00, 'Kajaria', 400);

create table staffs(
id INT PRIMARY KEY AUTO_INCREMENT,
staff_name VARCHAR(50),
  role VARCHAR(30),
  phone VARCHAR(15),
  join_date DATE
);

INSERT INTO staffs (staff_name, role, phone, join_date) VALUES
('Arun', 'Engineer', '9876543210', '2024-01-10'),
('Prabhu', 'Driver', '9876500123', '2024-02-05'),
('Suresh', 'Mason', '9900122345', '2024-03-11'),
('Kumar', 'Electrician', '9823456789', '2024-04-20'),
('Raja', 'Supervisor', '9789001122', '2024-03-15'),
('Hari', 'Painter', '9001100223', '2024-05-01'),
('Vijay', 'Helper', '9812200333', '2024-06-17'),
('Mani', 'Carpenter', '9090909090', '2024-07-08'),
('Rajesh', 'Plumber', '9567890231', '2024-08-12'),
('Sathish', 'Security', '9098765432', '2024-09-01');


UPDATE staffs
SET join_date= curdate()
WHERE id= 2;

DELETE FROM staffs WHERE id =9;

INSERT INTO staffs (id,staff_name, role, phone, join_date) VALUES (9,'Rajesh', 'Plumber', '9567890231', '2024-08-12');

RENAME TABLE staffs TO staff;

CREATE TABLE attendance(
  id INT PRIMARY KEY AUTO_INCREMENT,
  staff_id INT,
  attendance_date DATE,
  status VARCHAR(10),
  FOREIGN KEY (staff_id) REFERENCES staff(id)
);

INSERT INTO attendance (staff_id, attendance_date, status) VALUES
(1, CURDATE(), 'Present'),
(2, CURDATE(), 'Absent'),
(3, CURDATE(), 'Present'),
(4, CURDATE(), 'Present'),
(5, CURDATE(), 'Absent'),
(6, CURDATE(), 'Present'),
(7, CURDATE(), 'Present'),
(8, CURDATE(), 'Present'),
(9, CURDATE(), 'Absent'),
(10, CURDATE(), 'Present');

UPDATE attendance SET status = 'Absent'
WHERE id = 4;

DELETE FROM attendance WHERE id =1;

INSERT INTO attendance(staff_id, attendance_date, status) VALUES
(1, CURDATE(), 'Present');

CREATE TABLE stock(
  id INT PRIMARY KEY AUTO_INCREMENT,
  material_id INT,
  stock_in INT,
  stock_out INT,
  date DATE,
  FOREIGN KEY (material_id) REFERENCES materials(id)
);

INSERT INTO stock (material_id, stock_in, stock_out, date) VALUES
(1, 50, 20, CURDATE()),
(2, 10, 5, CURDATE()),
(3, 5, 2, CURDATE()),
(4, 2000, 500, CURDATE()),
(5, 50, 10, CURDATE()),
(6, 15, 2, CURDATE()),
(7, 30, 5, CURDATE()),
(8, 10, 1, CURDATE()),
(9, 20, 6, CURDATE()),
(10, 40, 10, CURDATE());


CREATE TABLE salary(
  id INT PRIMARY KEY AUTO_INCREMENT,
  staff_id INT,
  month VARCHAR(20),
  amount DECIMAL(10,2),
  status VARCHAR(20),
  FOREIGN KEY (staff_id) REFERENCES staff(id)
);

INSERT INTO salary (staff_id, month, amount, status) VALUES
(1, 'December', 35000.00, 'Paid'),
(2, 'December', 15000.00, 'Pending'),
(3, 'December', 22000.00, 'Paid'),
(4, 'December', 25000.00, 'Paid'),
(5, 'December', 18000.00, 'Pending'),
(6, 'December', 20000.00, 'Paid'),
(7, 'December', 12000.00, 'Paid'),
(8, 'December', 24000.00, 'Pending'),
(9, 'December', 21000.00, 'Paid'),
(10, 'December', 15000.00, 'Paid');




