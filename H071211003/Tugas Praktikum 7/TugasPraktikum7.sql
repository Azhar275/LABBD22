-- nomor 1
SELECT customerName, pembayaranTerbesar, pembayaranTerkecil
FROM	(SELECT customerNumber, MAX(amount) AS pembayaranTerbesar, 
		MIN(amount) AS pembayaranTerkecil
		FROM payments
		GROUP BY customerNumber) AS pay
INNER JOIN customers 
USING(customerNumber);

-- nomor 2
SELECT CONCAT(firstName, ' ', lastName) AS nama, officeCode
FROM employees
WHERE officeCode =
(SELECT offices.officeCode
FROM offices
INNER JOIN employees
ON offices.officeCode = employees.officeCode
GROUP BY officeCode
ORDER BY COUNT(employeeNumber) DESC
LIMIT 1);

-- nomor 3
SELECT productName, productScale
FROM products
WHERE productName IN
	(SELECT productName FROM products
    WHERE productName LIKE '%ford%');

#4. Siapa nama pelanggan, dan nama karyawan serta berapa nomor pesanan 
#	dan biaya pesanan untuk pesanan yang paling mahal?
-- SELECT customers.customerName, CONCAT(employees.firstName, ' ', employees.lastName) AS nama, orders.orderNumber, od.biaya
-- FROM customers
-- INNER JOIN employees
-- ON customers.salesRepEmployeeNumber = employees.employeeNumber
-- NATURAL JOIN orders
-- INNER JOIN (SELECT SUM(quantityOrdered * priceEach) AS biaya, orderNumber FROM orderdetails
-- GROUP BY orderNumber
-- ORDER BY biaya DESC 
-- LIMIT 1) AS  od 
-- ON orders.orderNumber = od.orderNumber;

-- nomor 4
SELECT  customers.customerName, CONCAT(employees.firstName, ' ', employees.lastName) AS nama, orders.orderNumber, SUM(quantityOrdered * priceEach) 
FROM customers
INNER JOIN employees 
ON customers.salesRepEmployeeNumber = employees.employeeNumber
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
WHERE orders.orderNumber =
(SELECT orderNumber FROM orderdetails
GROUP BY orderNumber
ORDER BY SUM(quantityOrdered * priceEach) DESC 
LIMIT 1)
GROUP BY customers.customerNumber;



-- nomor 5
SELECT DISTINCT country, LENGTH(country) AS karakter
FROM customers
WHERE LENGTH(country) =
	(SELECT MAX(LENGTH(country)) FROM customers) OR
    length(country) =  
    (SELECT MIN(LENGTH(country)) FROM customers);