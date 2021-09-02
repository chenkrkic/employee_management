USE employee_management;

INSERT INTO department
    (d_name)
VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');

INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Sales Lead', 100000, 1),
    ('Salesperson', 80000, 1),
    ('Lead Engineer', 150000, 2),
    ('Software Engineer', 120000, 2),
    ('Account Manager', 160000, 3),
    ('Accountant', 125000, 3),
    ('Legal Team Lead', 250000, 4),
    ('Lawyer', 190000, 4);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Ric', 'Ome', 1, NULL),
    ('Janis', 'Huang', 2, 1),
    ('Stevie', 'Zhang', 3, NULL),
    ('Ray', 'Min', 4, 3),
    ('Ray', 'Huang', 5, NULL),
    ('Ann', 'Portar', 6, 5),
    ('Presley', 'Chen', 7, NULL),
    ('Hathaway', 'Chen', 8, 7);