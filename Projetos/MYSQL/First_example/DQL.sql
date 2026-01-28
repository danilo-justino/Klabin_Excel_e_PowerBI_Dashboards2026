-- ======================================
-- DQL - Data Query Language
-- Consultas e verificação de estrutura
-- ======================================

SHOW DATABASES;

DESC person;
DESC favorite_food;

DESC information_schema.table_constraints;

SELECT *
FROM information_schema.table_constraints
WHERE constraint_schema = 'first_example';
