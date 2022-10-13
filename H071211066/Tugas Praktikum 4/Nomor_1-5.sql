-- Nomor 1 --

USE classicmodels;

SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM offices;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM payments;
SELECT * FROM productlines;
SELECT * FROM products;

SELECT o.orderDate, p.productName
FROM orderdetails AS od
INNER JOIN orders AS o
ON od.orderNumber = o.orderNumber
INNER JOIN products AS p
ON od.productCode = p.productCode
WHERE p.productName = "1940 Ford Pickup Truck"
ORDER BY o.orderDate DESC;


-- Nomor 2 --

USE classimodels;

SELECT * FROM products;
SELECT * FROM orderdetails;

SELECT DISTINCT p.productName
FROM orderdetails AS od
INNER JOIN products AS p
ON od.productCode = p.productCode
WHERE od.priceEach < (0.8*p.MSRP);

-- Nomor 3 --

USE appseminar;

SELECT * FROM ss_mahasiswa;
SELECT * FROM ss_dosen;
SELECT * FROM ss_pembimbing;

SELECT d.nama, m.nama
FROM ss_pembimbing AS p
INNER JOIN ss_mahasiswa AS m 
ON p.id_mahasiswa = m.id_mahasiswa
INNER JOIN ss_dosen AS d
ON p.id_pembimbing_utama = d.id_dosen
WHERE m.nama = 'Sulaeman';

-- Nomor 4 -- 

USE classicmodels;

SELECT * FROM customers;
SELECT * FROM payments;
SELECT * FROM orders;
SELECT * FROM orderdetails;

ALTER TABLE customers
ADD `status` VARCHAR(100);

UPDATE customers
SET `status` = 'Reguler';

SELECT c.`status`, p.amount, od.quantityOrdered  
FROM customers AS c
INNER JOIN payments AS p
ON c.customerNumber = p.customerNumber
INNER JOIN orders AS o
ON c.customerNumber = o.customerNumber
INNER JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber; 

UPDATE customers AS c
INNER JOIN payments AS p
ON c.customerNumber = p.customerNumber
INNER JOIN orders AS o
ON c.customerNumber = o.customerNumber
INNER JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber
SET c.`status` = "VIP"
WHERE  p.amount > 100000 OR od.quantityOrdered > 50;

SELECT customerName, `status` FROM customers WHERE `status` = "VIP";


-- Nomor 5 -- 

USE classicmodels;

SELECT * FROM payments;
SELECT * FROM orderdetails;
SELECT * FROM orders;

ALTER TABLE orders DROP FOREIGN KEY orders_ibfk_1;     
ALTER TABLE orders ADD FOREIGN KEY (customerNumber) REFERENCES customers (customerNumber) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE orderdetails DROP FOREIGN KEY orderdetails_ibfk_1;
ALTER TABLE orderdetails ADD FOREIGN KEY (orderNumber) REFERENCES orders (orderNumber) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE payments DROP FOREIGN KEY payments_ibfk_1;     
ALTER TABLE payments ADD FOREIGN KEY (customerNumber) REFERENCES customers (customerNumber) ON DELETE CASCADE ON UPDATE CASCADE;

DELETE o, c
FROM orders AS o
INNER JOIN customers AS c
ON o.customerNumber = c.customerNumber
WHERE o.`status` = "Cancelled";
