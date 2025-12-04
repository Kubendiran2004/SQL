-- DB creation
CREATE DATABASE IF NOT EXISTS newdb;
USE newdb;

-- Table creation
CREATE TABLE developers (
    id INT PRIMARY KEY auto_increment,
    user_id VARCHAR(20) UNIQUE,
    developer_name VARCHAR(12),
    developer_email VARCHAR(12),
    developer_age INT,
    developer_mobile INT,
    createdby VARCHAR(20) DEFAULT "ADMIN",
    createdat DATE,
    updateby VARCHAR(20) DEFAULT "ROLE",
    updatedat DATETIME
);

CREATE TABLE EDUCATION (
    id INT PRIMARY KEY auto_increment,
    EDU_user_id VARCHAR(20) UNIQUE,
    degree VARCHAR(10),
    college_name VARCHAR(20),
    degree_duration INT,
    FOREIGN KEY (EDU_user_id) REFERENCES developers (user_id)
);

CREATE TABLE EXPERIENCE (
    id INT PRIMARY KEY auto_increment,
    EXP_user_id VARCHAR(20) UNIQUE,
    experience INT(2),
    previous_company VARCHAR(15),
    previous_role VARCHAR(15)
);

-- ADD constraints
ALTER TABLE developers 
    ADD CONSTRAINT uq_developer_email UNIQUE (developer_email);

ALTER TABLE EXPERIENCE 
    ADD CONSTRAINT fk_EXPERIENCE FOREIGN KEY (EXP_user_id) REFERENCES developers(user_id);

-- RENAME table (correct order)
RENAME TABLE developers TO MERN_DEVELOPERS;
ALTER TABLE MERN_DEVELOPERS RENAME TO DEVELOPERS;

-- MODIFY columns
ALTER TABLE EXPERIENCE CHANGE COLUMN experience total_experience INT;
ALTER TABLE EDUCATION MODIFY COLUMN college_name VARCHAR(30);
ALTER TABLE EXPERIENCE ADD COLUMN reliving_date DATE;
