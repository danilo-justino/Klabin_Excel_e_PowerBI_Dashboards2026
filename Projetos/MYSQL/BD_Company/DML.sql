USE company;

-- =========================
-- DEPARTMENT (20)
-- =========================
INSERT INTO department (dname, dnumber, mgr_ssn, mgr_start_date) VALUES
('Research',1,NULL,NULL),
('Administration',2,NULL,NULL),
('IT',3,NULL,NULL),
('Finance',4,NULL,NULL),
('HR',5,NULL,NULL),
('Marketing',6,NULL,NULL),
('Sales',7,NULL,NULL),
('Support',8,NULL,NULL),
('Logistics',9,NULL,NULL),
('Security',10,NULL,NULL),
('Legal',11,NULL,NULL),
('Planning',12,NULL,NULL),
('Operations',13,NULL,NULL),
('Quality',14,NULL,NULL),
('Design',15,NULL,NULL),
('Innovation',16,NULL,NULL),
('Training',17,NULL,NULL),
('Procurement',18,NULL,NULL),
('Infrastructure',19,NULL,NULL),
('Strategy',20,NULL,NULL);

-- =========================
-- EMPLOYEE (20)
-- =========================
INSERT INTO employee VALUES
('John','A','Silva','100000001','1985-02-10','Recife','M',5500,NULL,1),
('Maria','B','Souza','100000002','1990-03-12','Recife','F',6000,NULL,2),
('Carlos','C','Oliveira','100000003','1988-07-19','Olinda','M',5200,'100000001',3),
('Ana','D','Costa','100000004','1992-11-01','Recife','F',5100,'100000002',4),
('Pedro','E','Santos','100000005','1987-09-22','Jaboatao','M',5800,'100000001',5),
('Julia','F','Almeida','100000006','1991-05-17','Recife','F',6200,'100000002',6),
('Lucas','G','Barbosa','100000007','1989-06-30','Recife','M',5000,'100000001',7),
('Mariana','H','Ribeiro','100000008','1993-04-25','Olinda','F',5300,'100000002',8),
('Rafael','I','Martins','100000009','1984-12-02','Recife','M',7000,NULL,9),
('Fernanda','J','Carvalho','100000010','1995-01-11','Recife','F',4800,'100000002',10),
('Bruno','K','Gomes','100000011','1986-08-15','Recife','M',5400,'100000009',11),
('Camila','L','Rocha','100000012','1994-02-20','Olinda','F',5200,'100000002',12),
('Diego','M','Pereira','100000013','1983-03-28','Recife','M',7500,NULL,13),
('Larissa','N','Melo','100000014','1996-07-09','Recife','F',4700,'100000013',14),
('Eduardo','O','Freitas','100000015','1982-05-05','Recife','M',7100,NULL,15),
('Patricia','P','Teixeira','100000016','1993-09-18','Olinda','F',5000,'100000015',16),
('Roberto','Q','Araujo','100000017','1981-01-30','Recife','M',7200,NULL,17),
('Sandra','R','Nascimento','100000018','1992-10-13','Recife','F',5100,'100000017',18),
('Felipe','S','Batista','100000019','1987-06-21','Recife','M',5600,'100000017',19),
('Aline','T','Dias','100000020','1994-12-08','Olinda','F',4950,'100000017',20);

-- =========================
-- ATUALIZAR GERENTES
-- =========================
UPDATE department SET mgr_ssn='100000001', mgr_start_date='2020-01-01' WHERE dnumber=1;
UPDATE department SET mgr_ssn='100000002', mgr_start_date='2020-01-01' WHERE dnumber=2;
UPDATE department SET mgr_ssn='100000003', mgr_start_date='2020-01-01' WHERE dnumber=3;
UPDATE department SET mgr_ssn='100000004', mgr_start_date='2020-01-01' WHERE dnumber=4;
UPDATE department SET mgr_ssn='100000005', mgr_start_date='2020-01-01' WHERE dnumber=5;
UPDATE department SET mgr_ssn='100000006', mgr_start_date='2020-01-01' WHERE dnumber=6;
UPDATE department SET mgr_ssn='100000007', mgr_start_date='2020-01-01' WHERE dnumber=7;
UPDATE department SET mgr_ssn='100000008', mgr_start_date='2020-01-01' WHERE dnumber=8;
UPDATE department SET mgr_ssn='100000009', mgr_start_date='2020-01-01' WHERE dnumber=9;
UPDATE department SET mgr_ssn='100000010', mgr_start_date='2020-01-01' WHERE dnumber=10;

-- =========================
-- DEPT_LOCATIONS (20)
-- =========================
INSERT INTO dept_locations VALUES
(1,'Recife'),
(1,'Olinda'),
(2,'Recife'),
(2,'Jaboatao'),
(3,'Recife'),
(3,'Paulista'),
(4,'Recife'),
(4,'Olinda'),
(5,'Recife'),
(6,'Jaboatao'),
(7,'Recife'),
(8,'Paulista'),
(9,'Recife'),
(10,'Olinda'),
(11,'Recife'),
(12,'Recife'),
(13,'Jaboatao'),
(14,'Olinda'),
(15,'Recife'),
(16,'Paulista');

-- =========================
-- PROJECT (20)
-- =========================
INSERT INTO project VALUES
('ProjectA',1,'Recife',1),
('ProjectB',2,'Recife',2),
('ProjectC',3,'Olinda',3),
('ProjectD',4,'Recife',4),
('ProjectE',5,'Recife',5),
('ProjectF',6,'Jaboatao',6),
('ProjectG',7,'Recife',7),
('ProjectH',8,'Paulista',8),
('ProjectI',9,'Recife',9),
('ProjectJ',10,'Olinda',10),
('ProjectK',11,'Recife',11),
('ProjectL',12,'Recife',12),
('ProjectM',13,'Jaboatao',13),
('ProjectN',14,'Recife',14),
('ProjectO',15,'Recife',15),
('ProjectP',16,'Olinda',16),
('ProjectQ',17,'Recife',17),
('ProjectR',18,'Paulista',18),
('ProjectS',19,'Recife',19),
('ProjectT',20,'Recife',20);

-- =========================
-- WORKS_ON (20)
-- =========================
INSERT INTO works_on VALUES
('100000001',1,10),
('100000002',2,15),
('100000003',3,20),
('100000004',4,10),
('100000005',5,25),
('100000006',6,30),
('100000007',7,15),
('100000008',8,12),
('100000009',9,18),
('100000010',10,20),
('100000011',11,16),
('100000012',12,14),
('100000013',13,22),
('100000014',14,8),
('100000015',15,12),
('100000016',16,10),
('100000017',17,18),
('100000018',18,20),
('100000019',19,16),
('100000020',20,12);

-- =========================
-- DEPENDENT (20)
-- =========================
INSERT INTO dependent VALUES
('100000001','Carlos','M','2010-01-01','Son'),
('100000002','Julia','F','2012-02-02','Daughter'),
('100000003','Marcos','M','2011-03-03','Son'),
('100000004','Ana','F','2014-04-04','Daughter'),
('100000005','Pedro','M','2013-05-05','Son'),
('100000006','Laura','F','2015-06-06','Daughter'),
('100000007','Lucas','M','2012-07-07','Son'),
('100000008','Clara','F','2016-08-08','Daughter'),
('100000009','Rafael','M','2010-09-09','Son'),
('100000010','Sofia','F','2013-10-10','Daughter'),
('100000011','Bruno','M','2011-11-11','Son'),
('100000012','Livia','F','2014-12-12','Daughter'),
('100000013','Diego','M','2009-01-13','Son'),
('100000014','Alice','F','2017-02-14','Daughter'),
('100000015','Edu','M','2008-03-15','Son'),
('100000016','Paula','F','2012-04-16','Daughter'),
('100000017','Roberto','M','2007-05-17','Son'),
('100000018','Sara','F','2014-06-18','Daughter'),
('100000019','Felipe','M','2011-07-19','Son'),
('100000020','Aline','F','2016-08-20','Daughter');
