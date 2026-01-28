-- Criação do schema
CREATE SCHEMA IF NOT EXISTS company;
USE company;

-- =========================
-- TABELA: employee
-- =========================
CREATE TABLE employee (
    fname VARCHAR(15) NOT NULL,
    minit CHAR,
    lname VARCHAR(15) NOT NULL,
    ssn CHAR(9) NOT NULL,
    bdate DATE,
    address VARCHAR(30),
    sex CHAR(1),
    salary DECIMAL(10,2),
    super_ssn CHAR(9),
    dno INT NOT NULL,
    PRIMARY KEY (ssn)
);

-- =========================
-- TABELA: department
-- =========================
CREATE TABLE department (
    dname VARCHAR(15) NOT NULL,
    dnumber INT NOT NULL,
    mgr_ssn CHAR(9),
    mgr_start_date DATE,
    PRIMARY KEY (dnumber),
    UNIQUE (dname),
    CONSTRAINT fk_department_mgr
        FOREIGN KEY (mgr_ssn) REFERENCES employee (ssn)
);

-- =========================
-- TABELA: dept_locations
-- =========================
CREATE TABLE dept_locations (
    dnumber INT NOT NULL,
    dlocation VARCHAR(15) NOT NULL,
    PRIMARY KEY (dnumber, dlocation),
    CONSTRAINT fk_dept_locations_department
        FOREIGN KEY (dnumber) REFERENCES department (dnumber)
);

-- =========================
-- TABELA: project
-- =========================
CREATE TABLE project (
    pname VARCHAR(15) NOT NULL,
    pnumber INT NOT NULL,
    plocation VARCHAR(15),
    dnum INT NOT NULL,
    PRIMARY KEY (pnumber),
    UNIQUE (pname),
    CONSTRAINT fk_project_department
        FOREIGN KEY (dnum) REFERENCES department (dnumber)
);

-- =========================
-- TABELA: works_on
-- =========================
CREATE TABLE works_on (
    essn CHAR(9) NOT NULL,
    pno INT NOT NULL,
    hours DECIMAL(3,1) NOT NULL,
    PRIMARY KEY (essn, pno),
    CONSTRAINT fk_works_on_employee
        FOREIGN KEY (essn) REFERENCES employee (ssn),
    CONSTRAINT fk_works_on_project
        FOREIGN KEY (pno) REFERENCES project (pnumber)
);

-- =========================
-- TABELA: dependent
-- =========================
CREATE TABLE dependent (
    essn CHAR(9) NOT NULL,
    dependent_name VARCHAR(15) NOT NULL,
    sex CHAR,
    bdate DATE,
    relationship VARCHAR(8),
    PRIMARY KEY (essn, dependent_name),
    CONSTRAINT fk_dependent_employee
        FOREIGN KEY (essn) REFERENCES employee (ssn)
);
