DROP DATABASE IF EXISTS Extra_Assignment_4;
CREATE DATABASE Extra_Assignment_4;
USE Extra_Assignment_4;

-- Question 1 Create the tables (with the most appropriate/economic field/column constraints & type)
CREATE TABLE department(
department_number INT AUTO_INCREMENT PRIMARY KEY,
department_name   VARCHAR(50)
);

CREATE TABLE employee_table(
employee_number   INT AUTO_INCREMENT PRIMARY KEY,
employee_name     VARCHAR(50),
department_number INT,
FOREIGN KEY (department_number) REFERENCES department(department_number)
);

CREATE TABLE employee_skill_table(
employee_number   INT,
skill_code        VARCHAR(50),
date_registered   DATE,
FOREIGN KEY (employee_number) REFERENCES employee_table(employee_number)
);



