USE classicmodels;

-- Nomor 1

SELECT * FROM orders;
SELECT * FROM orderdetails;
SELECT * FROM customers;
SELECT * FROM products;

SELECT @orderNumber := MAX(orderNumber)+1 FROM orders;

# 1. Mulai transaction baru
START TRANSACTION;
# 2. Mendapatkan order number terbaru
SELECT @orderNumber:=max(orderNumber)+1 from orders;
# 3. Menambahkan order baru untuk customer 450
INSERT INTO orders(orderNumber, orderDate, requiredDate, shippedDate, STATUS, customerNumber)
VALUES(@orderNumber, '2005-05-31', '2005-06-09', '2005-06-12', 'In Process', 450);

INSERT INTO orderdetails(orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES(@orderNumber, 'S18_2432', 17, 48.62, 10);

SELECT @orderNumber:=max(orderNumber)+1 from orders;

INSERT INTO orders(orderNumber, orderDate, requiredDate, shippedDate, STATUS, customerNumber)
VALUES(@orderNumber, '2005-06-01', '2005-06-10', '2005-06-15', 'In Process', 161);

INSERT INTO orderdetails(orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES(@orderNumber, 'S24_1444', 12, 53.75, 1);

SELECT @orderNumber:=max(orderNumber)+1 from orders;

INSERT INTO orders(orderNumber, orderDate, requiredDate, shippedDate, STATUS, customerNumber)
VALUES(@orderNumber, '2005-06-05', '2005-06-18', '2005-06-25', 'In Process', 328);

INSERT INTO orderdetails(orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES(@orderNumber, 'S18_2432', 35, 48.62, 10);

# 4. Commit Perubahan
COMMIT


-- Nomor 2

BEGIN;
DELETE FROM orderdetails;
SELECT COUNT(*) FROM orderdetails;

ROLLBACK;
SELECT COUNT(*) FROM orderdetails;


-- Buatkan query untuk menampilkan 5 data pelanggan terbaru berdasarkan waktu orderan

SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM orderdetails;

SELECT customers.customerNumber, customers.customerName, customers.contactLastName, customers.contactFirstName,
customers.phone FROM customers
JOIN orders
ON customers.customerNumber = orders.customerNumber
ORDER BY orders.orderDate DESC LIMIT 5;
