- ======================================
-- DDL - Data Definition Language
-- Definição do banco e das tabelas
-- ======================================

CREATE DATABASE first_example;
CREATE DATABASE IF NOT EXISTS first_example;

USE first_example;

CREATE TABLE person (
    person_id SMALLINT UNSIGNED,
    fname VARCHAR(20),
    lname VARCHAR(20),
    gender ENUM('M', 'F'),
    birth_date DATE,
    street VARCHAR(30),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20),
    postal_code VARCHAR(20),
    CONSTRAINT pk_person PRIMARY KEY (person_id)
);

CREATE TABLE favorite_food (
    person_id SMALLINT UNSIGNED,
    food VARCHAR(20),
    CONSTRAINT pk_favoritefood PRIMARY KEY (person_id, food),
    CONSTRAINT fk_favorite_food_person
        FOREIGN KEY (person_id) REFERENCES person (person_id)
);
