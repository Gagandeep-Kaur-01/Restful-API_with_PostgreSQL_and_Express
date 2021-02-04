CREATE DATABASE practice_database;

--\c into practice_database

CREATE TABLE practice(
    prac_id SERIAL PRIMARY KEY,
    description VARCHAR(255)
)