-- USE CLASSICMODELS
-- nomor 1 -- 
-- SELECT orders.orderDate
-- FROM products 
-- JOIN orderdetails
-- ON products.productCode = orderdetails.productCode
-- JOIN orders
-- ON orderdetails.orderNumber = orders.orderNumber
-- WHERE productName = "1940 Ford Pickup Truck" ORDER BY orderDate DESC

-- nomor 2
-- SELECT products.productName, orderdetails.priceEach, 0.8 * products.MSRP
-- FROM products
-- INNER JOIN orderdetails
-- ON products.productCode = orderdetails.productCode
-- WHERE orderdetails.priceEach < 0.8 * products.MSRP

-- nomor 3
-- USE appseminar
-- SELECT ss_mahasiswa.nama, ss_dosen.nama
-- FROM ss_pembimbing
-- JOIN ss_mahasiswa
-- ON ss_mahasiswa.id_mahasiswa = ss_pembimbing.id_mahasiswa
-- JOIN ss_dosen
-- ON ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_utama
-- WHERE ss_mahasiswa.nama = "Sulaeman"

-- nomor 4
-- ALTER TABLE customers
-- ADD COLUMN `status` VARCHAR (20)
-- UPDATE customers SET `status` = "Regular"
-- UPDATE customers 
-- JOIN payments
-- ON customers.customerNumber = payments.customerNumber
-- JOIN orders
-- ON orders.customerNumber = customers.customerNumber 
-- JOIN orderdetails
-- ON orderdetails.orderNumber = orders.orderNumber
-- SET customers.`status` = "VIP"
-- WHERE payments.amount >100000 OR orderdetails.quantityOrdered >50
-- 
-- SELECT DISTINCT customerName FROM customers WHERE `status` = "VIP"

-- nomor 5
-- DELETE orders, customers
-- FROM customers
-- INNER JOIN orders
-- ON customers.customerNumber = orders.customerNumber
-- WHERE orders.`status` = "Cancelled"
-- 
-- ALTER TABLE orders DROP FOREIGN KEY order_ibfk_1;
-- ALTER TABLE orders ADD FOREIGN KEY(customerNumber) REFERENCES customers(customerNumber) ON UPDATE CASCADE ON DELETE CASCADE;

-- ALTER TABLE orders DROP FOREIGN KEY orders_ibfk_3;
-- ALTER TABLE orderdetails DROP FOREIGN KEY orderdetails_ibfk_1;
-- ALTER TABLE orderdetails ADD FOREIGN KEY(orderNumber) REFERENCES orders(orderNumber) ON UPDATE CASCADE ON DELETE CASCADE;

-- ALTER TABLE payments DROP FOREIGN KEY payments_ibfk_1;
-- ALTER TABLE payments ADD FOREIGN KEY(customerNumber) REFERENCES customers(customerNumber) ON UPDATE CASCADE ON DELETE CASCADE;

-- SELECT * FROM orders WHERE `status` = "Cancelled"