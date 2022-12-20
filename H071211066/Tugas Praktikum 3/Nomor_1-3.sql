
-- Nomor 1 --

SELECT * FROM employees;

INSERT INTO employees
VALUE (1703, 'Rahmi', 'Syifa', 'x343', 'sifasisi3@gmail.com', '3', 1102, 'Sales Rep');

INSERT INTO employees
VALUE (1704, 'Fad', 'Dzul', 'x103', 'fad123@gmail.com', '7', 1619, 'Janitor');

INSERT INTO employees
VALUE (1705, 'Ham', 'Atar', 'x102', 'atham@gmail.com', '7', 1702, 'Janitor');


-- Nomor 2 --

SELECT * FROM offices;

INSERT INTO offices
VALUE (8, 'Makassar', '+62', 'Unit 2 Ramsis', NULL, NULL, 'Indonesia', '90241', 'IND')

UPDATE employees
SET officeCode = '8'
WHERE officeCode = '4' AND jobTitle = 'Sales Rep';

-- Nomor 3 -- classicmodels

DELETE FROM payments WHERE amount < 10000;
