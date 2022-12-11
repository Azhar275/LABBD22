-- USE classicmodels;

#  nomor 1
-- SELECT products.productName, products.productcode, orders.orderDate From products
-- INNER JOIN orderdetails
-- ON products.productCode = orderdetails.productCode 
-- INNER JOIN orders
-- ON  orderdetails.orderNumber = orders.orderNumber
-- WHERE products.productName = "1940 Ford Pickup Truck" order by orders.orderDate desc;

# nomor 2
-- SELECT products.productName, products.productcode, orderdetails.priceEach, products.MSRP From products
-- INNER JOIN orderdetails	
-- ON products.productCode = orderdetails.productCode 
-- WHERE orderdetails.priceEach < (0.8*products.MSRP);

# nomor 3	
-- use appseminar;
-- 		
-- SELECT M.Nama, M.id_mahasiswa , P.id_pembimbing_utama, D.nama 
-- From ss_mahasiswa AS M
-- INNER JOIN ss_pembimbing AS p
-- ON M.id_mahasiswa = P.id_mahasiswa
-- INNER JOIN ss_dosen AS D
-- ON P.id_pembimbing_utama = D.id_dosen
-- WHERE M.nama = 'Sulaeman';

# nomor 4
use classicmodels;
-- ALTER TABLE customers
-- ADD COLUMN `Status` varchar(10);

-- update customers
-- INNER JOIN payments
-- ON customers.customerNumber = payments.customerNumber
-- INNER JOIN orders
-- ON customers.customerNumber = orders.customerNumber
-- INNER JOIN orderdetails	
-- ON orders.orderNumber = orderdetails.orderNumber
-- Set customers.Status = 'VIP'
-- WHERE payments.amount >= 100000 or orderdetails.quantityOrdered >= 50;

#melihat daftar customer VIP			
-- SELECT customers.customerName, payments.amount, orderdetails.quantityOrdered, customers.status FROM customers
-- INNER JOIN payments
-- ON customers.customerNumber = payments.customerNumber
-- INNER JOIN orders
-- ON customers.customerNumber = orders.customerNumber
-- INNER JOIN orderdetails
-- ON orders.orderNumber = orderdetails.orderNumber
#WHERE customers.Status = 'Regular/VIP'

#Mengubah yang selain VIP menjadi Regular
-- Update customers
-- SET customers.Status = 'Regular'
-- WHERE customers.Status is NULL;

#nomor 5
-- use classicmodels;
-- show CREATE TABLE orderdetails;

ALTER TABLE orderdetails
-- DROP CONSTRAINT orderdetails_ibfk_1;
-- ALTER TABLE orderdetails
-- DROP CONSTRAINT orderdetails_ibfk_2;

-- show create table orders;
-- ALTER TABLE orders
-- DROP CONSTRAINT orders_ibfk_1;

-- ALTER TABLE payments
-- DROP CONSTRAINT payments_ibfk_1;

-- DELETE customers,orders,orderdetails
-- FROM customers
-- INNER JOIN Orders
-- ON customers.customerNumber = orders.customerNumber
-- INNER JOIN Orderdetails
-- ON orders.orderNumber = orderdetails.orderNumber
-- INNER JOIN payments
-- ON customers.customerNumber = payments.customerNumber
-- WHERE orders.status = 'Cancelled';		