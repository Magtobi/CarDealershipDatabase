-- 1. Get all dealerships
SELECT *
FROM dealerships;

-- 2. Find all vehicles for a specific dealership
SELECT *
FROM dealerships
WHERE dealershipID = 222;

-- 3. Find a car by VIN
SELECT *
FROM vehicles
WHERE VIN = '1FA6P8R06P5501971';

-- 4. Find the dealership where a certain car is located, by VIN
SELECT
dealerships.dealershipID, dealerships.name, dealerships.address
FROM vehicles v
JOIN inventory i ON v.VIN = i.VIN
JOIN dealerships ON i.dealershipID = dealerships.dealershipID
WHERE v.vin = '1FMEE5DP8PLB71207';

-- 5. Find all dealerships that have a certain car type
SELECT model, d.dealershipID
FROM vehicles v
JOIN inventory i ON v.VIN = i.VIN
JOIN dealerships d ON i.dealershipID = d.dealershipID
WHERE v.model = 'Bronco';

-- 6. Get all sales information for a specific dealer for a specific data rang
SELECT *
FROM sales_contracts
WHERE price > 50000.00 AND dealershipID = 222;


