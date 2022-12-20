USE classicmodels;
# Nomor 1

SELECT `nama`, MAX(`amount`) AS "Pembayaran Terbesar", MIN(`amount`) AS "Pembayaran Terkecil" FROM
	(SELECT customers.customerName AS 'nama', payments.amount AS 'amount' FROM customers
	INNER JOIN payments
	ON customers.customerNumber = payments.customerNumber) AS a
GROUP BY `nama`;

# Nomor 2

SELECT CONCAT(firstName, " " ,lastName) AS "Daftar Karyawan" FROM employees
WHERE officeCode =
	(SELECT offices.officeCode
	FROM offices
	INNER JOIN employees
	ON offices.officeCode = employees.officeCode
	GROUP BY offices.officeCode
	ORDER BY COUNT(employees.employeeNumber) DESC LIMIT 1);


# Nomor 3

SELECT productScale, productName
FROM products
WHERE productName IN 
	(SELECT productName FROM products WHERE productName LIKE "%Ford%");

# Nomor 4

SELECT customers.customerName AS "Nama Pelanggan", 
CONCAT(employees.firstName, " ", employees.lastName) AS "Nama Karyawan",
orders.orderNumber AS "Nomor Pesanan", 
SUM(quantityOrdered * priceEach) AS "Biaya pesanan" 
FROM customers
INNER JOIN employees
ON customers.salesRepEmployeeNumber = employees.employeeNumber
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
WHERE orders.orderNumber =
	(SELECT orderNumber
	FROM orderdetails GROUP BY orderNumber 
	ORDER BY SUM(quantityOrdered * priceEach) DESC LIMIT 1)
GROUP BY orders.orderNumber;


# Nomor 5

SELECT DISTINCT country AS "Nama Negara", LENGTH(country) AS "Panjang Karakter" FROM customers
WHERE LENGTH(country) = 
		(SELECT MAX(LENGTH(country)) FROM customers) OR 
		LENGTH(country) = 
		(SELECT MIN(LENGTH(country)) FROM customers);
