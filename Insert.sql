INSERT INTO dealerships(dealershipID, name, address, phone)
VALUES (111,'Bricktown', '340 Bricktown Ln', '800-777-1012'),
	(222,'Bricktopia', '440 Bricktopia Ave', '800-888-1113'),
	(333,'Brickville', '540 Brickville St', '800-999-1214');
    
INSERT INTO vehicles(VIN, make, model, year, sold)
VALUES ('1FA6P8R06P5501971', 'Ford', 'Mustang', 2021, TRUE),
		('1FMEE5DP8PLB71207', 'Ford', 'Bronco', 2023, FALSE),
        ('1FAHP3K25CL262524', 'Ford', 'Focus', 2012, FALSE);
        -- ('WZ1DB2C07MW040809', 'Toyota', 'Supra', 2021, TRUE),
       -- ('JN1BZ4BHXRM360510', 'Nissan', '400Z', 2024, FALSE),
       -- ('JN1AR5EF0GM290251', 'Nissan', 'GT-R NISMO', 2016, TRUE);
        
INSERT INTO inventory(dealershipID, VIN)
VALUES (111, '1FA6P8R06P5501971'),
		(222, '1FMEE5DP8PLB71207'),
        (333, '1FAHP3K25CL262524');
        
INSERT INTO sales_contracts(dealershipID, VIN, price)
VALUES (111, '1FA6P8R06P5501971', 65000.00),
		(222, '1FMEE5DP8PLB71207', 75000.00),
        (333, '1FAHP3K25CL262524', 12000.00); 