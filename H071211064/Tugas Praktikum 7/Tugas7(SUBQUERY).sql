
 -- 1
 /*
 SELECT
 customerName AS `Nama Pelanggan`, (
 SELECT MIN(amount)
 FROM payments
 WHERE
 customerNumber = customers.customerNumber
 ) AS `Pembayaran Terkecil`, (
 SELECT MAX(amount)
 FROM payments
 WHERE
 customerNumber = customers.customerNumber
 ) AS `Pembayaran Terbesar`
 FROM customers 
 INNER JOIN payments  ON customers.customerNumber = payments.customerNumber
 GROUP BY customers.customerName;
 */

 -- 2
/*
SELECT officeCode, employeeNumber
FROM employees
WHERE officeCode = 
 (SELECT  officeCode  FROM employees
 GROUP BY officeCode 
 ORDER BY COUNT(officeCode) DESC
 LIMIT 1);
 */
 
 
 -- 3
 /*
 SELECT
 productName,
 productScale
 FROM products
 WHERE productCode IN (
 SELECT productCode
 FROM products
 WHERE
 productName LIKE '%FORD%'
 );
 */
 
-- 4
 /*
 SELECT
 customers.customerName AS `Nama Pelanggan`,
 CONCAT(employees.firstName, '', employees.lastName) AS `Nama Karyawan`,
 orders.orderNumber AS `Nomor Pesanan`,
 SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS `Total Harga`
 FROM customers
INNER JOIN orders ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber
WHERE orderdetails.orderNumber = 
(SELECT orderdetails.orderNumber
FROM orderdetails
GROUP BY orderdetails.orderNumber
ORDER BY SUM(orderdetails.quantityOrdered * orderdetails.priceEach)DESC
LIMIT 1);
*/
 
-- 5

SELECT DISTINCT country AS `Negara`, -- Menampilkan negara
LENGTH(`country`) AS `Panjang Karakter` -- Menampilkan panjang karakter dari negara
FROM customers 
WHERE 
LENGTH(country) = (SELECT MAX(LENGTH(country)) FROM customers) -- Memfilter berdasarkan negara dengan panjang karakter terbanyak
OR
LENGTH(country) = (SELECT MIN(LENGTH(country)) FROM customers) -- Memfilter berdasarkan negara dengan panjang karakter tersedikit

