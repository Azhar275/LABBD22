#No 1
-- USE classicmodels;
-- SELECT * FROM products;
-- SELECT * FROM orderdetails;
-- SELECT * FROM orders;

-- SELECT p.productName, od.orderNumber, o.orderNumber, o.orderDate
-- FROM products p 
-- LEFT JOIN orderdetails od ON p.productCode = od.productCode
-- LEFT JOIN orders o ON o.orderNumber = od.orderNumber
-- WHERE p.productName = '1940 Ford Pickup Truck' ORDER BY o.orderDate DESC;

#No 2
-- SELECT * FROM products;
-- SELECT * FROM orderdetails;

-- SELECT p.productName, od.priceEach,0.8*p.MSRP 
-- FROM products p 
-- LEFT JOIN orderdetails od 
-- ON p.productCode = od.productCode
-- WHERE od.priceEach < 0.8*p.MSRP;

#No 3
-- USE appseminar;
-- SELECT * FROM ss_mahasiswa;
-- SELECT * FROM ss_pembimbing;
-- SELECT * FROM ss_dosen;
-- 
-- SELECT ssm.id_mahasiswa, ssm.nama, ssp.id_pembimbing_utama, ssd.nama FROM ss_mahasiswa ssm 
-- LEFT JOIN ss_pembimbing ssp ON ssm.id_mahasiswa = ssp.id_mahasiswa
-- LEFT JOIN ss_dosen ssd ON ssd.id_dosen = ssp.id_pembimbing_utama
-- WHERE ssm.nama = 'Sulaeman';

#No 4
-- USE classicmodels;
-- SELECT * FROM customers;
-- SELECT * FROM orderdetails;
-- SELECT * FROM payments;
-- SELECT * FROM orders;

-- ALTER TABLE customers ADD `status` VARCHAR(50);

-- UPDATE customers
-- SET `status` = 'Reguler';

-- SELECT c.customerName, p.amount, od.quantityOrdered
-- FROM customers c
-- INNER JOIN payments p
-- ON c.customerNumber = p.customerNumber
-- JOIN orders o
-- ON o.customerNumber = c.customerNumber
-- JOIN orderdetails od
-- ON od.orderNumber = o.orderNumber;

-- UPDATE customers c
-- INNER JOIN payments p
-- ON c.customerNumber = p.customerNumber
-- JOIN orders o
-- ON o.customerNumber = c.customerNumber
-- JOIN orderdetails od
-- ON od.orderNumber = o.orderNumber
-- SET c.`status` = 'VIP'
-- WHERE p.amount > 100000 OR od.quantityOrdered > 50;
-- 
-- SELECT * FROM customers WHERE `status`='VIP';

#No 5
-- SELECT * FROM customers;
-- SELECT * FROM orders;
-- SELECT * FROM payments;
-- SELECT * FROM orderdetails;

-- DELETE c, o
-- FROM customers c
-- INNER JOIN orders o
-- ON c.customerNumber = o.customerNumber
-- WHERE o.`status`='Cancelled';

-- ALTER TABLE orders DROP FOREIGN KEY orders_ibfk_1;
-- ALTER TABLE orders ADD FOREIGN KEY(customerNumber) REFERENCES customers(customerNumber) ON DELETE CASCADE ON UPDATE CASCADE;

-- ALTER TABLE orderdetails DROP FOREIGN KEY orderdetails_ibfk_1;
-- ALTER TABLE orderdetails ADD FOREIGN KEY(orderNumber) REFERENCES orders(orderNumber) ON DELETE CASCADE ON UPDATE CASCADE;
-- 
-- ALTER TABLE payments DROP FOREIGN KEY payments_ibfk_1;
-- ALTER TABLE payments ADD FOREIGN KEY(customerNumber) REFERENCES customers(customerNumber) ON DELETE CASCADE ON UPDATE CASCADE;

-- SELECT * FROM orders WHERE `status` = 'Cancelled';