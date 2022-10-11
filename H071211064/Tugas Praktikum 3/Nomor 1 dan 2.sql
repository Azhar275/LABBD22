-- SET SQL_SAFE_UPDATES = 0;

-- SET FOREIGN_KEY_CHECKS= 1;

-- USE classicmodels;

-- 1.

-- SELECT * FROM employees;

-- INSERT INTO employees(employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)

-- VALUES(1036, 'Ardhiyanda', 'Agung', 'x2727', 'agung@classicmodelcars.com', 4, 1027, 'Sales Rep');

-- VALUES(1037, 'Turner', 'Michael', 'x2929', 'hartono@classicmodelcars.com', 4, 1029, 'Sales Rep');

-- VALUES(1038, 'Hartono', 'Mike', 'x2727', 'hartono@classicmodelcars.com', 4, 1028, 'Sales Rep');

-- VALUES(1045, 'Kevin', 'Mike', 'x3246', 'kevin@classicmodelcars.com', 4, 9999, 'Sales Rep');

-- 2.

-- UPDATE  employees

-- SET officeCode = '9'

-- WHERE officeCode = '4' AND jobTitle = 'Sales Rep';

-- SELECT * from employees;

-- INSERT INTO offices

-- VALUES(9, 'Texas', '+1 272 888 1200', '1555 Lake Woodlands', 'Dr Spring', 'Texas' ,'USA', '90222', 'NA');

-- UPDATE employees

-- SET officeCode ='5';

-- WHERE  jobTitle = 'Sales Rep';

-- 3.

-- SELECT * FROM payments;

-- DELETE FROM payments WHERE amount < 10000;