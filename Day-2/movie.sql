create database movie;
use movie;

DROP TABLE IF EXISTS casting;

CREATE TABLE casting(
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNIQUE,
    artist_name VARCHAR(20) UNIQUE,
    artist_role VARCHAR(10),
    age INT,
    experience_years INT
);
       TRUNCATE TABLE casting;
INSERT INTO casting (artist_name, artist_role, age, experience_years)
VALUES ('vijay', 'hero', 50, 30),
       ('pooja', 'heroine', 30, 10),('mamitha baiju','sister', 27, 5);
       SELECT * FROM casting;
UPDATE CASTING
SET artist_role = 'support'
WHERE id  = 3;
INSERT INTO casting (artist_name, artist_role, age, experience_years)
VALUES 
  ('bobby deol', 'villian', 48, 10),
  ('Monisha Blessy', 'supporting', 24, 5);
  ALTER TABLE casting
  DROP COLUMN user_id;
  
  UPDATE CASTING
  SET artist_role = 'sister'
  WHERE id = 5;
  INSERT INTO casting (artist_name, artist_role, age, experience_years)
VALUES ('priyamani','choreo',35,15);

ALTER TABLE casting AUTO_INCREMENT = 7;

  INSERT INTO casting (artist_name, artist_role, age, experience_years)
VALUES ('prakash raj', 'police', 50, 30);

DELETE FROM casting WHERE id = 12;
INSERT INTO casting (id, artist_name, artist_role, age, experience_years)
VALUES (7, 'prakash raj', 'police', 50, 30);

create table materials(
id INT PRIMARY KEY AUTO_INCREMENT,
item_name varchar(30),
item_type varchar(30),
quantity INT,
item_status varchar(30)
);

INSERT INTO materials (item_name, item_type, quantity, item_status)
VALUES ('sony', 'camera', 6, 'In Use'), ('canon', 'camera', 5, 'available'), ('light', 'Light standard', 50, 'in use'),('Costume', 'clothes',100, 'in use');

ALTER TABLE materials ADD CONSTRAINT unique_item_name UNIQUE (item_name);

create table Staff_Attendance(
id INT PRIMARY KEY AUTO_INCREMENT,
staff_name varchar(20),
attendance_date date,
present_or_absent varchar(10),
department varchar (30)
);

INSERT INTO Staff_Attendance (staff_name, attendance_date, present_or_absent, department)
 VALUES ('vikram', CURDATE(), 'absent', 'catering'),('arun', CURDATE(),'present', 'direction'), ('ram', CURDATE(), 'present', 'costume-designer'),('surya', CURDATE(), 'present', 'editor'), ('murugan', CURDATE(), 'present','makup-artist');

ALTER TABLE Staff_Attendance 
ADD COLUMN user_id INT UNIQUE AUTO_INCREMENT;

ALTER TABLE Staff_Attendance 
MODIFY id INT;

ALTER TABLE Staff_Attendance
DROP COLUMN user_id;

ALTER TABLE Staff_Attendance 
ADD COLUMN user_id INT UNIQUE AUTO_INCREMENT;

USE movie;

SELECT * FROM Staff_Attendance;

ALTER TABLE Staff_Attendance
DROP COLUMN user_id;


ALTER TABLE Staff_Attendance ADD PRIMARY KEY (id);
ALTER TABLE Staff_Attendance MODIFY id INT AUTO_INCREMENT;


INSERT INTO Staff_Attendance (staff_name, attendance_date, present_or_absent, department)
 VALUES ('hari', CURDATE(), 'absent', 'driver'), ('prabhu', curdate(), 'absent', 'sound');

create table technician(
id INT PRIMARY KEY AUTO_INCREMENT,
technician_name varchar(30),
expertise varchar(40),
experience_years INT,
department varchar (40),
salary INT
);

INSERT INTO technician (technician_name,expertise,experience_years,department,salary) VALUES ('silva', 'Stunt Master', 25, 'Stunt',200000),('sai', 'Sound Engineer', 10, 'sounding', 7500000),('shankar narayanan','Colorist', 25, 'color grading', 7500000), ('mallesh', 'Drone Operator', 5, 'Drone Operating', 500000),('jaya surya', 'VFX editor', 8, 'editing', 500000);
UPDATE technician
SET expertise = 'senior Stunt Master'
WHERE id=1;

UPDATE technician
SET salary = 10000000
WHERE id=1;

UPDATE technician
SET expertise = 'senior Stunt Master'
WHERE id=5;


