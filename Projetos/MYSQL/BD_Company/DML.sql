USE company;

INSERT INTO employee (fname, minit, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES
-- Setor 1 (HR)
('Alice', 'B', 'Smith', '100000001', '1980-05-10', '123 Main St', 'F', 90000.00, NULL, 1),
('Bob', 'C', 'Johnson', '100000002', '1985-08-22', '456 Oak St', 'M', 60000.00, '100000001', 1),
('Carol', 'D', 'King', '100000011', '1982-04-14', '789 Pine St', 'F', 58000.00, '100000001', 1),
('David', 'E', 'Lee', '100000012', '1983-12-05', '321 Maple St', 'M', 57000.00, '100000001', 1),

-- Setor 2 (Finance)
('Eve', 'F', 'Jones', '100000003', '1978-03-15', '654 Elm St', 'F', 95000.00, NULL, 2),
('Frank', 'G', 'Miller', '100000004', '1988-01-20', '987 Cedar St', 'M', 61000.00, '100000003', 2),
('Grace', 'H', 'Moore', '100000013', '1981-06-12', '147 Spruce St', 'F', 59000.00, '100000003', 2),
('Henry', 'I', 'Adams', '100000014', '1984-09-08', '258 Birch St', 'M', 58000.00, '100000003', 2),

-- Setor 3 (IT)
('Ivy', 'J', 'Davis', '100000005', '1975-07-07', '369 Walnut St', 'F', 88000.00, NULL, 3),
('Jack', 'K', 'Taylor', '100000006', '1986-04-18', '159 Chestnut St', 'M', 60000.00, '100000005', 3),
('Karen', 'L', 'White', '100000015', '1982-11-30', '753 Chestnut St', 'F', 57000.00, '100000005', 3),
('Leo', 'M', 'Hall', '100000016', '1987-03-22', '852 Elm St', 'M', 56000.00, '100000005', 3),

-- Setor 4 (Marketing)
('Mia', 'N', 'Wilson', '100000007', '1981-06-12', '963 Spruce St', 'F', 92000.00, NULL, 4),
('Nathan', 'O', 'Brown', '100000008', '1983-09-25', '147 Pine St', 'M', 59000.00, '100000007', 4),
('Olivia', 'P', 'Clark', '100000017', '1984-02-14', '258 Oak St', 'F', 58000.00, '100000007', 4),
('Paul', 'Q', 'Scott', '100000018', '1985-05-30', '369 Cedar St', 'M', 57000.00, '100000007', 4),

-- Setor 5 (Sales)
('Quinn', 'R', 'Moore', '100000009', '1979-12-05', '159 Walnut St', 'F', 91000.00, NULL, 5),
('Ryan', 'S', 'Taylor', '100000010', '1986-04-18', '753 Maple St', 'M', 60000.00, '100000009', 5),
('Sophia', 'T', 'King', '100000019', '1983-08-10', '852 Birch St', 'F', 58000.00, '100000009', 5),
('Thomas', 'U', 'Lee', '100000020', '1987-11-12', '963 Elm St', 'M', 57000.00, '100000009', 5);


INSERT INTO department (dname, dnumber, mgr_ssn, mgr_start_date) VALUES
('HR', 1, '100000001', '2010-01-01'),
('Finance', 2, '100000003', '2012-03-15'),
('IT', 3, '100000005', '2011-06-20'),
('Marketing', 4, '100000007', '2013-09-10'),
('Sales', 5, '100000009', '2014-11-05');

INSERT INTO dept_locations (dnumber, dlocation) VALUES
(1, 'New York'),
(2, 'Chicago'),
(3, 'San Francisco'),
(4, 'Los Angeles'),
(5, 'Boston');

INSERT INTO project (pname, pnumber, plocation, dnum) VALUES
('Project A', 1, 'New York', 1),
('Project B', 2, 'Chicago', 2),
('Project C', 3, 'San Francisco', 3),
('Project D', 4, 'Los Angeles', 4);

-- Projeto A (pnumber = 1) – HR e Finance
INSERT INTO works_on (essn, pno, hours) VALUES
('100000001', 1, 40.0),  -- HR gerente
('100000002', 1, 35.0),  -- HR colaborador
('100000003', 1, 30.0),  -- Finance gerente
('100000004', 1, 25.0),  -- Finance colaborador
('100000011', 1, 20.0);  -- HR colaborador extra

-- Projeto B (pnumber = 2) – Finance e IT
INSERT INTO works_on (essn, pno, hours) VALUES
('100000003', 2, 40.0),  -- Finance gerente
('100000004', 2, 35.0),  -- Finance colaborador
('100000005', 2, 30.0),  -- IT gerente
('100000006', 2, 25.0),  -- IT colaborador
('100000015', 2, 20.0);  -- IT colaborador extra

-- Projeto C (pnumber = 3) – IT e Marketing
INSERT INTO works_on (essn, pno, hours) VALUES
('100000005', 3, 40.0),  -- IT gerente
('100000006', 3, 35.0),  -- IT colaborador
('100000007', 3, 30.0),  -- Marketing gerente
('100000008', 3, 25.0),  -- Marketing colaborador
('100000017', 3, 20.0);  -- Marketing colaborador extra

-- Projeto D (pnumber = 4) – Marketing e Sales
INSERT INTO works_on (essn, pno, hours) VALUES
('100000007', 4, 40.0),  -- Marketing gerente
('100000008', 4, 35.0),  -- Marketing colaborador
('100000009', 4, 30.0),  -- Sales gerente
('100000010', 4, 25.0),  -- Sales colaborador
('100000019', 4, 20.0);  -- Sales colaborador extra

INSERT INTO dependent (essn, dependent_name, sex, bdate, relationship) VALUES
('100000001', 'Sam', 'M', '2010-02-15', 'Child'),
('100000002', 'Lily', 'F', '2012-07-20', 'Child'),
('100000003', 'Mike', 'M', '2008-09-05', 'Child'),
('100000004', 'Anna', 'F', '2015-03-10', 'Child'),
('100000005', 'Tom', 'M', '2005-11-25', 'Child');
