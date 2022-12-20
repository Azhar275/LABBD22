-- soal no 1 

SELECT c.customerName, SUM(p.amount) AS `Total Belanja`, c.creditLimit AS `Batas Kredit`, 
SUM(p.amount) - c.creditLimit AS `Selisih`
FROM customers AS c
JOIN payments AS p
ON p.customerNumber = c.customerNumber
GROUP BY c.customerName
HAVING `Total Belanja` > `Batas Kredit`
ORDER BY Selisih DESC


-- soal no 2

SELECT CONCAT(c.customerName, " :", " ", c.contactFirstName, " ", c.contactLastName, " @", c.addressLine1) AS `Pelanggan`,
SUM(d.quantityOrdered) AS `Jumlah orderan`
FROM customers AS c
JOIN orders AS o
ON c.customerNumber = o.customerNumber
JOIN orderdetails AS d
ON o.orderNumber = d.orderNumber
GROUP BY c.customerName
ORDER BY `Jumlah orderan` DESC
LIMIT 1


-- soal no 3

SELECT CONCAT(MONTHNAME(p.paymentDate), " ", YEAR(p.paymentDate)) AS `Hari Pembayaran`, 
COUNT(DISTINCT c.customerName) AS `Jumlah Pelanggan`,GROUP_CONCAT(distinct c.customername ORDER BY c.customerName SEPARATOR " , ") 
AS `List Pelanggan`, SUM(p.amount) AS `Jumlah Pembayaran`
FROM payments AS p
JOIN customers AS c
ON p.customerNumber = c.customerNumber
WHERE MONTH(paymentDate) = '02'
GROUP BY `Hari Pembayaran`
ORDER BY `Jumlah Pembayaran` DESC 


-- soal no 4

SELECT UPPER(r.productName) AS `Nama Produk`, COUNT(*) AS `Jumlah Di Order`, 
GROUP_CONCAT(o.orderDate ORDER BY o.orderDate SEPARATOR " , ") AS `Waktu Orderan`, 
r.buyPrice AS `Harga Beli`, d.priceEach AS `Harga Jual`, SUM(d.quantityOrdered) AS `Total Jumlah Orderan`, 
CONCAT(SUM(d.priceEach*d.quantityOrdered), " - ", SUM(r.buyPrice*d.quantityOrdered), " = ", 
(SUM(d.priceEach*d.quantityOrdered))-(SUM(r.buyPrice*d.quantityOrdered))) AS `Pendapatan - Modal = Keuntungan`
FROM products AS r
JOIN orderdetails AS d
ON d.productCode = r.productCode
JOIN orders AS o
ON d.orderNumber = o.orderNumber
WHERE r.productName LIKE "%2001%"
GROUP BY `Harga Jual`
HAVING (SUM(d.priceEach*d.quantityOrdered))-(SUM(r.buyPrice*d.quantityOrdered)) > 5000
ORDER BY (SUM(d.priceEach*d.quantityOrdered))-(SUM(r.buyPrice*d.quantityOrdered)) DESC 


-- soal no 5

SELECT o.addressLine1 AS `Alamat`, REPLACE(o.phone, RIGHT(o.phone, 6), '* ****') AS `Nomor Telepon`, COUNT(DISTINCT e.employeeNumber) AS `Jumlah Karyawan`, 
COUNT(DISTINCT c.customerName) AS `Jumlah Pelanggan`, ROUND(AVG(p.amount), 2) AS `Rata-rata Penghasilan`
FROM offices AS o
LEFT JOIN employees AS e
ON e.officeCode = o.officeCode
LEFT JOIN customers AS c
ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN payments AS p
ON c.customerNumber = p.customerNumber
GROUP BY `Alamat`
ORDER BY `Nomor Telepon` ASC