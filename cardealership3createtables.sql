-- drop database if it exists
DROP DATABASE IF EXISTS CarDealershipDatabase;
-- create database
CREATE DATABASE CarDealershipDatabase;
-- switch to cardealer database
USE CarDealershipDatabase;
-- create tables 
CREATE TABLE dealerships(
dealership_id INT AUTO_INCREMENT PRIMARY KEY,
name varchar(50),
address varchar(50),
phone varchar(12)
);
-- table 2
CREATE TABLE vehicles(
VIN BIGINT PRIMARY KEY,
make varchar(50),
model varchar(50),
YEAR int,
SOLD boolean,
color varchar(50),
vehicleType varchar(50),
odometer int,
price double
);
-- TABLE 3
CREATE TABLE inventory(
dealership_id int,
VIN varchar(17)
);

-- table 4
CREATE TABLE salesContracts(
contractID int auto_increment,
VIN varchar(17),
sale_date date,
price decimal(10.2)
);