--1. Create database in prostgresql
CREATE DATABASE OLYMPIC2020;

--2. Create Athletes tables
CREATE TABLE IF NOT EXISTS D_ATHLETES (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    gender VARCHAR(50),
    birth_date date,
    country_code VARCHAR(3),
    discipline_code VARCHAR(4)
);

--3. Create table Coaches
CREATE TABLE IF NOT EXISTS D_COACHES (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    gender VARCHAR(50),
    birth_date date,
    country_code VARCHAR(3),
    discipline_code VARCHAR(4),
    function VARCHAR(50)
);

--4. Create table Medals details
CREATE TABLE IF NOT EXISTS F_MEDALS_DETAILS (
    id SERIAL PRIMARY KEY,
    medal_code INT,
    medal_date date,
    athlete_name VARCHAR(150),
    country_code VARCHAR(3),
    discipline_code VARCHAR(4),
    event VARCHAR(150)
);

--5. Create table Countries
CREATE TABLE IF NOT EXISTS R_COUNTRIES (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150),
    country_code VARCHAR(3),
    continent VARCHAR(50),
    sub_region VARCHAR(150)
);

--6. create table medals
CREATE TABLE IF NOT EXISTS R_MEDALS (
    id SERIAL PRIMARY KEY,
    medal_code INT,
    medal_name VARCHAR(50)
);

--7. create table discipline
CREATE TABLE IF NOT EXISTS R_DISCIPLINES (
    id SERIAL PRIMARY KEY,
    discipline_code VARCHAR(4),
    discipline_name VARCHAR(50)
);