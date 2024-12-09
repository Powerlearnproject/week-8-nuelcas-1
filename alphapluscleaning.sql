CREATE DATABASE AlphaPlusCleaning;

USE AlphaPlusCleaning;

-- Create Products Table
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    UnitPrice DECIMAL(10, 2),
    ProductionCost DECIMAL(10, 2)
);

-- Create Production Table
CREATE TABLE Production (
    ProductionID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    QuantityProduced INT,
    WasteGenerated DECIMAL(10, 2),
    ProductionDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create Sales Table
CREATE TABLE Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    QuantitySold INT,
    Revenue DECIMAL(10, 2),
    SaleDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Location VARCHAR(100)
);

-- Insert Sample Data into Products
INSERT INTO Products (ProductName, Category, UnitPrice, ProductionCost) 
VALUES 
('Multi-purpose Liquid Soap', 'Soap', 12.99, 5.50),
('Tiles Cleaner', 'TilesCleaner', 15.99, 7.00),
('Germicide', 'Disinfectant', 9.99, 2.00),
('Toilet Cleaner', 'ToiletCleaner', 8.00, 1.50);

-- Insert Sample Data into Production
INSERT INTO Production (ProductID, QuantityProduced, WasteGenerated, ProductionDate)
VALUES 
(1, 100, 5.5, '2024-11-01'),
(2, 200, 8.0, '2024-11-02'),
(3, 50, 2.0, '2024-11-03'),
(4, 50, 1.5, '2024-11-04');
-- Insert Sample Data into Sales
INSERT INTO Sales (ProductID, QuantitySold, Revenue, SaleDate)
VALUES 
(1, 50, 649.50, '2024-11-05'),
(2, 100, 1599.00, '2024-11-06'),
(2, 30, 299.70, '2024-11-07'),
(2, 35, 280.00, '2024-11-08');

-- Insert Sample Data into Customers
INSERT INTO Customers (CustomerName, Email, PhoneNumber, Location)
VALUES 
('Nuel Cas', 'nuelcas.ao@gmail.com', '080660291760', 'Lagos'),
('Casmir Onyekani', 'casmir_ao@ymail.com', '08136969552', 'Abuja'),
('Maya Ada', 'maya@yahoo.com', '8234985666', 'Lagos'),
('Ify Ugo', 'ifygod2016@yahoo.com', '8194085344', 'Enugu');


SELECT * FROM Products;


