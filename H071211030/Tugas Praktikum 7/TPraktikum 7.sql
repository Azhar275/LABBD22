-- Soal 1
SELECT DISTINCT customers.customerNumber, customers.customerName,
(SELECT MAX(amount) FROM payments WHERE customers.customerNumber =
payments.customerNumber) AS "max_amount", (SELECT MIN(amount) FROM payments WHERE customers.customerNumber =
payments.customerNumber) AS "min_amount"
FROM customers

-- Soal 2
-- SELECT employees.employeeNumber, employees.lastName, employees.firstName, offices.city, offices.officeCode
-- FROM offices
-- JOIN employees
-- USING (officeCode)
-- WHERE offices.officeCode =  
-- 	(SELECT offices.officeCode, count(employees.officeCode)
-- 	FROM offices
-- 	JOIN employees
-- 	USING (officeCode)
-- 	GROUP BY officeCode 
-- 	order by count(employees.officeCode) DESC LIMIT 1)
-- 
-- Soal 3
-- SELECT productName, productscale
-- FROM products
-- WHERE productName IN 
-- 	(SELECT productName FROM products WHERE productName LIKE "%Ford%") 

-- Soal 4
-- SELECT c.customerName, CONCAT (e.firstName, ' ', e.lastName) 'Nama Karyawan', o.orderNumber, SUM(quantityOrdered * priceEach) 'total_order'
-- FROM customers c
-- JOIN employees e
-- ON c.salesRepEmployeeNumber = e.employeeNumber
-- JOIN orders o
-- USING (customerNumber)
-- JOIN orderdetails d
-- USING (orderNumber)
-- WHERE d.orderNumber = (SELECT orderNumber FROM orderdetails GROUP BY orderNumber ORDER BY SUM(quantityOrdered * priceEach) DESC LIMIT 1);
-- 	
-- Soal 5
-- SELECT DISTINCT LENGTH(country) AS karakter, country AS panjang_karakter
-- FROM customers
-- WHERE LENGTH(country) IN 
-- 	((SELECT MAX(LENGTH(country)) FROM customers),(SELECT MIN(LENGTH(country)) FROM customers))
-- ORDER BY karakter DESC