DROP DATABASE IF EXISTS employee_management;
CREATE DATABASE employee_management;

USE employee_management;

CREATE TABLE department (
    id INTEGER AUTO_INCREMENT NOT NULL,
    d_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE role (
    id INTEGER AUTO_INCREMENT NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL (9,2),
    department_id INTEGER,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INTEGER AUTO_INCREMENT NOT NULL,  
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER,
    manager_id INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);

SELECT name
FROM department 
LEFT JOIN role 
ON department.id = department.id;

SELECT title, salary, department_id
FROM role 
LEFT JOIN department
ON role.department_id = department.id;

SELECT first_name, last_name, role_id, manager_id
FROM employee
JOIN role
ON employee.role_id = role.department_id; 