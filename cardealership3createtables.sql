-- drop database if it exists
DROP DATABASE IF EXISTS CarDealershipDatabase;
-- create database
CREATE DATABASE CarDealershipDatabase;
-- switch to cardealer database
USE CarDealershipDatabase;
-- drop tables
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS salesContracts;
DROP TABLE IF EXISTS dealerships;
DROP TABLE IF EXISTS vehicles;
-- create tables

CREATE TABLE dealerships(
dealership_id INT AUTO_INCREMENT PRIMARY KEY,
name varchar(50) NOT NULL,
address varchar(50) NOT NULL,
phone varchar(12) NOT NULL
);
-- table 2
CREATE TABLE vehicles(
VIN varchar(17) NOT NULL PRIMARY KEY,
make varchar(50) NOT NULL,
model varchar(50) NOT NULL,
YEAR int(4) NOT NULL,
SOLD boolean NOT NULL,
color varchar(50),
vehicleType varchar(50),
odometer int,
price double NOT NULL 
);
-- TABLE 3
CREATE TABLE inventory(
dealership_id int NOT NULL,
VIN varchar(17) NOT NULL, 
FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id), 
FOREIGN KEY (VIN) REFERENCES vehicles(VIN));

-- table 4
CREATE TABLE salesContracts(
contract_id int auto_increment PRIMARY KEY,
VIN varchar(17),
sale_date date,
price decimal(10.2),
FOREIGN KEY (VIN) REFERENCES VEHICLES (VIN)); 

-- examples
INSERT INTO dealerships( dealership_id, name, address, phone) 
VALUES 
(1, 'Speedy Motors', '123 Elm St, Dallas, TX', '2145551234'),
(2, 'AutoHub Central', '456 Oak Ave, Denver, CO', '3035555678'),
(3, 'Elite Rides', '789 Maple Rd, Orlando, FL', '4075557890'),
(4, 'Sunset Autos', '321 Pine Ln, Phoenix, AZ', '6025553456'),
(5, 'Luxury Wheels', '654 Cedar Blvd, Seattle, WA', '2065559012');

INSERT INTO vehicles (VIN, make, model, YEAR, SOLD, color, vehicleType, odometer, price) VALUES
('1HGCM82633A004352', 'Honda', 'Accord', 2020, FALSE, 'Silver', 'Sedan', 23000, 19999.99),
('1FTFW1E84LFB45234', 'Ford', 'F-150', 2021, FALSE, 'Black', 'Truck', 15000, 28995.00),
('2T3ZF4DV8AW032145', 'Toyota', 'RAV4', 2019, TRUE, 'White', 'SUV', 31000, 17950.00),
('3N1AB7AP6FY256741', 'Nissan', 'Sentra', 2022, FALSE, 'Blue', 'Sedan', 12000, 21499.00),
('1G1BE5SM7J7192345', 'Chevrolet', 'Cruze', 2018, TRUE, 'Red', 'Sedan', 45000, 13500.00),
('5UXWX9C52E0D53219', 'BMW', 'X3', 2020, FALSE, 'Gray', 'SUV', 29000, 31499.99),
('WAUZZZF46KN034287', 'Audi', 'A4', 2019, TRUE, 'Black', 'Sedan', 38000, 26750.00),
('1C4PJLCB7KD280123', 'Jeep', 'Cherokee', 2021, FALSE, 'Green', 'SUV', 22000, 23995.95),
('JN1BJ1CPXHW102389', 'Nissan', 'Rogue Sport', 2023, FALSE, 'White', 'SUV', 8000, 25999.99),
('3FA6P0G73HR189234', 'Ford', 'Fusion', 2017, TRUE, 'Silver', 'Sedan', 67000, 11800.00);

INSERT INTO inventory (dealership_id, VIN) VALUES
(1, '1HGCM82633A004352'),  -- Honda Accord at Speedy Motors
(2, '3FA6P0G73HR189234'),  -- Ford Fusion at Speedy Motors
(3, '1FTFW1E84LFB45234'),  -- Ford F-150 at AutoHub Central
(4, '2T3ZF4DV8AW032145'),  -- Toyota RAV4 at AutoHub Central
(5, '3N1AB7AP6FY256741');  -- Nissan Sentra at Elite Rides


INSERT INTO salesContracts (VIN, sale_date, price) VALUES
('2T3ZF4DV8AW032145', '2024-11-18', 17500.00),  -- Toyota RAV4
('1G1BE5SM7J7192345', '2024-09-12', 13250.00),  -- Chevy Cruze
('WAUZZZF46KN034287', '2024-12-05', 26500.00),  -- Audi A4
('3FA6P0G73HR189234', '2024-10-03', 11500.00);  -- Ford Fusion


