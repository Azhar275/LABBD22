-- USE classicmodels;
-- 
-- Soal 1--
-- SELECT * FROM employees
-- INSERT INTO employees (employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
-- VALUE (1945, 'Dzacky', 'Muhammad', 'x3227', 'bjorkon@kont.com', 1, 1102,'Hengker');
-- 
--  INSERT INTO employees
--  VALUE (2706, 'Adit', 'Wangsaff', 'x3322', 'aditxbogor@ngawi.com', 1, 1945, 'Gigolo');
-- 
-- INSERT INTO employees (employeeNumber, firstName, extension, officeCode, reportsTo, jobTitle)
-- VALUE (2707, 'Khalil', 'x3219', 7, '1002', 'Gay');
-- 
-- 
-- Soal 2
--  SELECT * FROM offices
-- INSERT INTO offices (officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory)
-- VALUE (8, 'Ngawi Ngawi', '+(874) 888888', '7316 Keefe Ford', NULL, 'Maryland', 'BOGOR', 80166, 'NA');
-- 
-- SELECT * FROM employees
-- UPDATE employees
-- SET officeCode = 8
-- WHERE  jobTitle = 'Sales Rep'AND officeCode = 4;s
-- 
-- Soal 3
-- SELECT * FROM payments
-- 
-- DELETE FROM payments WHERE amount<10000
-- 
-- 
-- 
