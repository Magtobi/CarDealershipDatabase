DROP DATABASE IF EXISTS Carealership;

CREATE database IF NOT EXISTS CarDealership;

USE CarDealership;

CREATE TABLE dealerships (
	dealershipID INT auto_increment PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12));
    
CREATE TABLE vehicles(
	VIN VARCHAR(17) PRIMARY KEY,
	make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    sold BOOLEAN
    );
    
CREATE TABLE inventory (
	dealershipID INT,
    VIN VARCHAR(17));
    
CREATE TABLE sales_contracts (
	contractID INT AUTO_INCREMENT PRIMARY KEY,
    dealershipID INT,
    price DOUBLE,
	VIN VARCHAR(17),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN));
    