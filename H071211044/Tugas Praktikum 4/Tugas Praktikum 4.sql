#USE classicmodels;

#1. 
-- SELECT orders.orderDate, products.productName
-- FROM products
-- INNER JOIN orderdetails 
-- ON products.productCode = orderdetails.productCode
-- INNER JOIN orders 
-- ON orderdetails.orderNumber = orders.orderNumber
-- WHERE productName = '1940 Ford Pickup Truck'
-- ORDER BY orderDate DESC

#2.
-- SELECT products.productName, orderdetails.priceEach, 0.8 * products.MSRP
-- FROM products
-- INNER JOIN orderdetails
-- ON products.productCode = orderdetails.productCode 
-- WHERE orderdetails.priceEach < 0.8 * products.MSRP


-- USE appseminar;
-- #3.
-- SELECT ss_dosen.nama, ss_mahasiswa.nama
-- FROM ss_mahasiswa
-- INNER JOIN ss_pembimbing
-- ON ss_mahasiswa.id_mahasiswa = ss_pembimbing.id_mahasiswa
-- INNER JOIN ss_dosen
-- ON ss_pembimbing.id_pembimbing_utama = ss_dosen.id_dosen
-- WHERE ss_mahasiswa.nama ='Sulaeman'
 
#USE classicmodels;
#4.
-- ALTER TABLE customers
-- ADD `status` VARCHAR (20)
-- UPDATE customers set `status` = 'Regular'
-- UPDATE customers
-- INNER JOIN payments
-- ON customers.customerNumber = payments.customerNumber
-- INNER JOIN orders
-- ON orders.customerNumber = customers.customerNumber
-- INNER JOIN orderdetails
-- ON orders.orderNumber = orderdetails.orderNumber
-- set customers.status = 'VIP'
-- WHERE payments.amount > 100000 or orderdetails.quantityOrdered > 50 
 
-- SELECT DISTINCT customerName FROM customers WHERE status = 'VIP'

#5.
-- DELETE orders, customers
-- FROM customers
-- INNER JOIN orders
-- ON customers.customerNumber = orders.customerNumber
-- WHERE orders.status = 'Cancelled'

-- ALTER TABLE orders
-- DROP foreign key orders_ibfk_1;
-- ALTER TABLE orders ADD foreign key (customerNumber) REFERENCES customers (customerNumber) ON update cascade ON delete cascade;

-- ALTER TABLE orderdetails
-- DROP foreign key orderdetails_ibfk_1;
-- ALTER TABLE orderdetails ADD foreign key (orderNumber) REFERENCES orders (orderNumber) ON update cascade ON delete cascade;

-- ALTER TABLE payments
-- DROP foreign key payments_ibfk_1;
-- ALTER TABLE payments ADD foreign key (customerNumber) REFERENCES customers (customerNumber) ON update cascade ON delete cascade 

-- SELECT * FROM orders WHERE status = 'Cancelled'






