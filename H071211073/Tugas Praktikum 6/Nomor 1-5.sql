# NOMOR 1
-- tampilkan nama pelanggan yang total belanjanya melebihi kredit limit,
-- tampilkan selisih /total belanja/ dengan kreditlimit,
-- urutkan berdasarkan selisih tersebut secara menurun.
SELECT customers.customerName AS 'Nama Pelanggan', SUM(payments.amount) AS 'Total Belanja', 
customers.creditLimit AS 'Batas Kredit', (SUM(payments.amount) - customers.creditLimit) AS selisih
FROM customers
JOIN payments
ON customers.customerNumber = payments.customerNumber
GROUP BY customers.customerNumber #bisa juga customerName
HAVING SUM(payments.amount) > customers.creditLimit
ORDER BY selisih DESC;


# NOMOR 2
-- Siapa customer yang total pembelian barangnya terbanyak (dihitung dari quantity bukan price)
SELECT CONCAT (customers.customerName, ' : ', customers.contactFirstName, customers.contactLastName, ' @', customers.addressLine1) AS 'Pelanggan', 
SUM(orderdetails.quantityOrdered) AS 'Jumlah Orderan'
FROM orderdetails
JOIN orders
ON orderdetails.orderNumber = orders.orderNumber
JOIN customers
ON customers.customerNumber = orders.customerNumber
GROUP BY customers.customerNumber
ORDER BY SUM(orderdetails.quantityOrdered) DESC
LIMIT 1;

# NOMOR 3
-- Tampilkan jumlah dan list pelanggan, 
-- serta jumlah pembayaran untuk pembayaran yang dilakukan pada bulan februari setiap tahunnya.
SELECT payments.paymentDate, CONCAT(MONTHNAME(payments.paymentDate), ' ', YEAR(payments.paymentDate)) AS 'Hari Pembayaran', COUNT(DISTINCT customers.customerName),
GROUP_CONCAT(DISTINCT customers.customerName SEPARATOR ';'), SUM(payments.amount) AS 'Jumlah Pembayaran'
FROM customers
JOIN payments
ON payments.customerNumber = customers.customerNumber
GROUP BY `Hari Pembayaran`
HAVING `Hari Pembayaran` LIKE 'Feb%'
ORDER BY `Jumlah Pembayaran` DESC;


# NOMOR 4 !group by price each / harga jual
-- Tampilkan informasi jumlah orderan serta keuntungan untuk penjualan 2001 Ferrari Enzo yang keuntungannya lebih besar dari 5000.
-- Nama Produk dalam huruf kapital/Jumlah di Order/Waktu Orderan dipisah dengan Comma/Harga Beli/Harga Jual/
-- Total Kuantitas Orderan/Keuntungan bersih yang diperoleh
SELECT productname, productCode
FROM products
WHERE productName = '2001 Ferrari Enzo';
-- ProductCode = s12_1108

SELECT UPPER(p.productName) AS 'Nama Produk', count(od.orderLineNumber) AS 'Jumlah di Order',
GROUP_CONCAT(o.orderDate SEPARATOR ' ,') AS 'Waktu Order', p.buyPrice AS 'Harga Beli',
od.priceEach AS 'Harga Jual', SUM(od.quantityOrdered) AS 'Total Jumlah Orderan',
CONCAT(
((sum(od.quantityOrdered)*od.priceEach)), ' - ',
(p.buyPrice*(sum(od.quantityOrdered))), ' = ',
(((sum(od.quantityOrdered)*od.priceEach)) - (p.buyPrice*(sum(od.quantityOrdered))))
) AS 'Pendapatan - Modal = Keuntungan'
FROM products p
JOIN orderdetails od
ON od.productCode = p.productCode
JOIN orders o
ON o.orderNumber = od.orderNumber
WHERE p.productName = '2001 Ferrari Enzo'
GROUP BY priceEach
HAVING (((sum(od.quantityOrdered)*od.priceEach)) - (p.buyPrice*(sum(od.quantityOrdered)))) > 5000
ORDER BY (((sum(od.quantityOrdered)*od.priceEach)) - (p.buyPrice*(sum(od.quantityOrdered)))) DESC;

# NOMOR 5
-- Tampilkan alamat pertama dari tiap kantor, 
-- no telp yang 5 angka terakhirnya disamarkan, 
-- jumlah karyawan, jumlah pelanggan yang pernah dilayani, serta rata-rata penghasilan.
SELECT ofc.addressLine1 AS 'Alamat', REPLACE(ofc.phone, RIGHT(ofc.phone, 5), ' *** **') AS 'Nomor Telepon',
COUNT(DISTINCT e.employeeNumber) AS 'Jumlah Karyawan', COUNT(DISTINCT c.customerNumber) AS 'Jumlah Pelanggan',
ROUND(AVG(p.amount), 2) AS 'Penghasilan'
FROM offices ofc
JOIN employees e
ON ofc.officeCode = e.officeCode
JOIN customers c
ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN payments p
ON p.customerNumber = c.customerNumber
GROUP BY ofc.officeCode

SELECT * 
FROM customers
INNER JOIN payments
ON customers.customerNumber = payments.customerNumber








