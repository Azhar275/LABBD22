#1: menampilkan data pembayaran(payment) terkecil dan terbesar 
# 	untuk masing-masing pengguna dengan menggunakan subquery
SELECT c.customerName, 'pembayaranTertinggi', 'pembayaranTerkecil'  
FROM (SELECT MAX(p.amount) AS 'pembayaranTertinggi',
		MIN(p.amount) AS 'pembayaranTerkecil'
		FROM payments p
		JOIN customers c
		GROUP BY c.customerNumber) 
JOIN customers c
ON c.customerNumber = p.customerNumber
GROUP BY c.customerNumber
-- sy nda tau...

SELECT c.customerName AS 'name', p.amount AS 'amount'
-- MAX(p.amount) AS 'maxPayment', MIN(p.amount) AS 'minPayment'
FROM payments p
JOIN customers c
ON c.customerNumber = p.customerNumber;
-- GROUP BY c.customerNumber

SELECT `name`, MAX(`amount`), MIN(`amount`)
FROM (SELECT c.customerName AS 'name', p.amount AS 'amount'
		FROM payments p
		JOIN customers c
		ON c.customerNumber = p.customerNumber
		)AS q
GROUP BY `name`;

#2: menampilkan seluruh employee yang bekerja di office 
#	dengan employee terbanyak (misalnya office A memiliki paling banyak employee, 
#	maka buatkan daftar employee pada office A)
SELECT officeCode
FROM employees
GROUP BY officeCode
ORDER BY COUNT(officeCode) DESC
LIMIT 1

-- check banyaknya tiap offCode => 1 (6)

SELECT CONCAT(lastName, ' ', firstName) AS 'nama'
FROM employees
WHERE officeCode = (SELECT officeCode
							FROM employees
							GROUP BY officeCode
							ORDER BY COUNT(officeCode) DESC
							LIMIT 1)


#3: menampilkan seluruh product yang di namanya mengandung kata ‘Ford’ 
#	beserta productScale dari product tersebut. SUBQUERY
SELECT p.productName, p.productScale
FROM products p
WHERE productName IN (SELECT p.productName
								FROM products p
								WHERE p.productName LIKE '%Ford%') 
-- product Name yg ditampilkan berdasarkan subquery

#4: Siapa nama pelanggan, dan nama karyawan serta berapa nomor pesanan
#	dan biaya pesanan untuk pesanan yang paling mahal?
SELECT c.customerName, CONCAT(lastName, ' ', firstName) AS 'employeeName', o.orderNumber, py.amount
FROM customers c
JOIN employees e
ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN orders o
ON o.customerNumber = c.customerNumber
JOIN payments py
ON py.customerNumber = c.customerNumber
GROUP BY c.customerName
HAVING MAX(py.amount)
ORDER BY py.amount DESC
-- BUKAN PAYMENT TAPI ORDERDETAILS: qnty*prEa

SELECT orderNumber
FROM orderdetails 
GROUP BY orderNumber
ORDER BY SUM(quantityOrdered*priceEach) DESC
LIMIT 1

SELECT c.customerName, CONCAT(lastName, ' ', firstName) AS 'employeeName', o.orderNumber, SUM(quantityOrdered*priceEach) AS 'hasil'
FROM customers c
JOIN employees e
ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN orders o
ON o.customerNumber = c.customerNumber
JOIN orderdetails od
ON od.orderNumber = o.orderNumber
WHERE o.orderNumber = (SELECT orderNumber
									FROM orderdetails 
									GROUP BY orderNumber
									ORDER BY SUM(quantityOrdered*priceEach) DESC
									LIMIT 1)

-- FROM!!
-- SELECT c.customerName, CONCAT(lastName, ' ', firstName) AS 'employeeName', o.orderNumber, SUM(quantityOrdered*priceEach) AS 'hasil'
-- FROM customers c
-- JOIN employees e
-- ON c.salesRepEmployeeNumber = e.employeeNumber
-- JOIN orders o
-- ON o.customerNumber = c.customerNumber
-- JOIN orderdetails od
-- ON od.orderNumber = o.orderNumber
-- JOIN (SELECT orderNumber
-- 									FROM orderdetails 
-- 									GROUP BY orderNumber
-- 									ORDER BY SUM(quantityOrdered*priceEach) DESC
-- 									LIMIT 1) AS q
-- ON q.orderNumber = o.orderNumber

#5: Tampilkan nama negara dan panjang karater negara, 
#	dimana menampilkan dua negara yaitu negara dengan karakter terpanjang 
#	dan negara dengan karakter terpendek
SELECT DISTINCT country, 
			(SELECT LENGTH(country) 
			FROM customers
			ORDER BY LENGTH(country)) AS 'stringLength'
FROM customers
ORDER BY `stringLength` DESC
-- sy tak tau T_T

SELECT country, LENGTH(country)
FROM customers
ORDER BY LENGTH(country) DESC
LIMIT 1

SELECT DISTINCT country, LENGTH(country) AS ''
FROM customers
WHERE LENGTH(country) = (SELECT LENGTH(country)
						FROM customers
						ORDER BY LENGTH(country) DESC
						LIMIT 1) OR 
						LENGTH(country) =  
						(SELECT LENGTH(country)
						FROM customers
						ORDER BY LENGTH(country)
						LIMIT 1)