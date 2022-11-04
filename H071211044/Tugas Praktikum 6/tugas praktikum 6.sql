USE classicmodels;

#1.
-- SELECT customers.customerName as 'nama pelanggan', 
-- SUM(payments.amount) as 'total belanja', customers.creditLimit AS 'batas kredit', (SUM(payments.amount)-customers.creditLimit) AS 'selisih'
-- FROM customers
-- INNER JOIN payments
-- ON customers.customerNumber = payments.customerNumber
-- GROUP BY customerName
-- HAVING SUM(payments.amount) > customers.creditLimit ORDER BY (SUM(payments.amount)-customers.creditLimit)  DESC LIMIT 5;

#2.
-- SELECT CONCAT(customers.customerName, ' : ', customers.contactFirstName, ' ', customers.contactLastName, '@', customers.addressLine1) as pelanggan, 
-- SUM(orderDetails.quantityOrdered) AS 'jumlah orderan'
-- FROM customers 
-- INNER JOIN orders 
-- ON customers.customerNumber = orders.customerNumber
-- INNER JOIN orderdetails 
-- ON orders.orderNumber = orderDetails.orderNumber
-- GROUP BY customers.customerName
-- ORDER BY SUM(orderDetails.quantityOrdered)DESC LIMIT 1;

#3. 
-- SELECT CONCAT((MONTHNAME(paymentDate)), " ",YEAR(paymentDate)) as 'hari pembayaran', COUNT(customers.customerName) as 'jumlah pelanggan', 
-- GROUP_CONCAT(customerName ORDER BY customerName ASC) as 'list pelanggan', SUM(payments.amount) as 'jumlah pembayaran'
-- FROM customers
-- INNER JOIN payments 
-- ON customers.customerNumber = payments.customerNumber
-- WHERE MONTH(paymentdate) = 2
-- GROUP BY YEAR(paymentDate) ORDER BY SUM(payments.amount)DESC;

#4.
-- select upper(p.productName) as 'nama produk' , count(o.customerNumber) as 'jumlah diorder', 
-- group_concat(orderDate) as 'waktu orderan', p.buyPrice as 'harga beli', od.priceEach as 'harga jual', 
-- concat((sum(od.quantityOrdered *od.priceEach)), "-", sum(od.quantityOrdered * p.buyprice), "=", (sum(od.quantityOrdered * od.priceEach)) - sum(od.quantityOrdered * p.buyprice))
-- AS "pendapatan - modal = keuntungan"
-- from products as p
-- inner join orderdetails as od
-- on p.productCode = od.productCode
-- inner join orders as o
-- on od.orderNumber = o.orderNumber
-- where p.productName =  '2001 Ferrari Enzo'
-- group by priceEach
-- having (sum(od.quantityOrdered * od.priceEach)) - sum(od.quantityOrdered * p.buyprice) > 5000 
-- order by (sum(od.quantityOrdered * od.priceEach)) - sum(od.quantityOrdered * p.buyprice)desc;

#5.
-- SELECT o.addressLine1 AS 'Alamat', concat(LEFT(o.phone, LENGTH(o.phone)-6), '* ****') AS 'Nomor Telepon',
-- COUNT(DISTINCT e.employeeNumber) AS 'jumlah karyawan' , COUNT(DISTINCT c.customerName) AS 'jumlah pelanggan', round(AVG(amount), 2) AS 'Rata-rata penghasilan'
-- from offices AS o
-- INNER JOIN employees AS e
-- ON e.officeCode = o.officeCode
-- INNER JOIN customers AS c
-- ON c.salesRepEmployeeNumber = e.employeeNumber
-- INNER JOIN payments AS p
-- ON c.customerNumber = p.customerNumber
-- GROUP BY o.officeCode 







