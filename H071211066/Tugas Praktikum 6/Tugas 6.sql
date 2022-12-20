-- Nomor 1

SELECT customers.customerName AS 'Nama Pelanggan', SUM(payments.amount) AS 'Total Belanja', 
customers.creditLimit AS 'Batas Kredit',
(SUM(payments.amount)-customers.creditLimit) AS 'Selisih'
FROM customers
INNER JOIN payments
ON customers.customerNumber = payments.customerNumber
GROUP BY customers.customerName
HAVING customers.creditLimit < sum(payments.amount)
ORDER BY `Selisih` DESC;

-- Nomor 2

SELECT CONCAT(customers.customerName, ' : ', customers.contactfirstName, ' ', customers.contactLastName, '@', customers.addressLine1)
AS  'Pelanggan', (SUM(orderdetails.quantityOrdered)) AS 'Jumlah Orderan'
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
GROUP BY customers.customerName
ORDER BY `Jumlah Orderan` DESC LIMIT 1;

-- Nomor 3

SELECT CONCAT(MONTHNAME(payments.paymentDate) ,' ', year(payments.paymentDate)) AS  'Hari Pembayaran', 
COUNT(customers.customerName) AS 'Jumlah Pelanggan',
GROUP_CONCAT(customers.customerName ORDER BY customers.customerName SEPARATOR '; ') AS 'List Pelanggan', 
SUM(payments.amount) AS 'Jumlah Pembayaran' 
FROM customers
INNER JOIN payments
ON customers.customerNumber = payments.customerNumber
WHERE MONTHNAME(payments.paymentDate) IN ('February')
GROUP BY year(payments.paymentDate)
ORDER BY `Jumlah Pembayaran` DESC;


-- Nomor 4

SELECT UPPER(products.productName) AS 'Nama Produk', 
COUNT(orders.orderDate) AS 'Jumlah di Order',
GROUP_CONCAT(orders.orderDate SEPARATOR ', ') AS 'Waktu Orderan',
products.buyPrice AS 'Harga Beli', 
orderdetails.priceEach AS 'Harga Jual', 
SUM(orderdetails.quantityOrdered) AS 'Total Jumlah Orderan',
CONCAT((orderdetails.priceEach * (SUM(orderdetails.quantityOrdered))), ' - ',
(products.buyPrice * (SUM(orderdetails.quantityOrdered))), ' = ' , 
(((orderdetails.priceEach * (SUM(orderdetails.quantityOrdered))) - 
((products.buyPrice * (SUM(orderdetails.quantityOrdered))))))) AS 'Pendapatan - Modal = Keuntungan'
FROM products
INNER JOIN orderdetails
ON products.productCode = orderdetails.productCode
INNER JOIN orders
ON orders.orderNumber = orderdetails.orderNumber
WHERE products.productName = '2001 Ferrari Enzo'
GROUP BY orderdetails.priceEach
HAVING (((orderdetails.priceEach * (SUM(orderdetails.quantityOrdered))) - 
((products.buyPrice * (SUM(orderdetails.quantityOrdered))))))
ORDER BY (((orderdetails.priceEach * (SUM(orderdetails.quantityOrdered))) - 
((products.buyPrice * (SUM(orderdetails.quantityOrdered)))))) DESC;


-- Nomor 5

SELECT offices.addressLine1 AS 'Alamat', 
CONCAT(LEFT(offices.phone, (LENGTH(offices.phone)-6)), '* ****') AS 'No Telp', 
COUNT(DISTINCT employees.employeeNumber) AS 'Jumlah Karyawan',
COUNT(DISTINCT customers.customerNumber) AS 'Jumlah Pelanggan', 
ROUND(AVG(payments.amount), 2) AS 'Rata-rata Penghasilan'
FROM offices
INNER JOIN employees
ON offices.officeCode = employees.officeCode
INNER JOIN customers
ON employees.employeeNumber = customers.salesRepEmployeeNumber
INNER JOIN payments
ON customers.customerNumber = payments.customerNumber
GROUP BY offices.officeCode
ORDER BY `No Telp` ASC;
