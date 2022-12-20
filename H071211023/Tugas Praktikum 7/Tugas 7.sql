# nomor 1
SELECT customers.customerNumber, customers.customerName `Nama Pengguna`, pembayaran.`Pembayaran Terbesar`, pembayaran.`Pembayaran Terkecil`
FROM customers
JOIN 
	(SELECT customerNumber, MAX(amount) AS `Pembayaran Terbesar` , MIN(amount) AS `Pembayaran Terkecil` FROM payments
	GROUP BY customerNumber) AS pembayaran
ON pembayaran.customerNumber = customers.customerNumber;


# nomor 2
SELECT * FROM employees
WHERE officeCode = 
	(SELECT officeCode
	FROM employees
	GROUP BY officeCode
	ORDER BY COUNT(employeeNumber) DESC
	LIMIT 1
	);


# nomor 3 
SELECT productName, productScale
FROM products
WHERE productName IN
	(SELECT productName FROM products
	WHERE productName LIKE "%Ford%");
	

# nomor 4
SELECT customerName AS `Nama Pelanggan`, salesRepEmployeeNumber, CONCAT(firstName, " ", lastName) AS `Nama Karyawan`, 
orderdetails.orderNumber AS `Nomor Pesanan`, SUM(priceEach*quantityOrdered) AS `Biaya Pesanan`
FROM orderdetails
JOIN orders
ON orders.orderNumber = orderdetails.orderNumber
JOIN customers
ON customers.customerNumber = orders.customerNumber
JOIN employees
ON customers.salesRepEmployeeNumber=employees.employeeNumber
GROUP BY orderdetails.orderNumber
HAVING SUM(priceEach*quantityOrdered) =
	(SELECT MAX(OrderTotals.orderTotal)
 	FROM 
		(SELECT sum(priceEach*quantityOrdered) AS orderTotal
		FROM OrderDetails
		GROUP BY orderNumber
		) AS OrderTotals
	);


# nomor 5
SELECT DISTINCT country, LENGTH(country) AS `lengthName`
FROM customers
WHERE LENGTH(country) = 
	(SELECT MAX(LENGTH(country)) AS `Karakter Terpanjang` FROM customers) 
OR LENGTH(country) = (SELECT MIN(LENGTH(country)) AS `Karakter Terpendek` FROM customers);

