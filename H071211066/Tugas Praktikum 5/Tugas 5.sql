-- Nomor 1

SELECT * FROM customers;
SELECT * FROM payments;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM products;

SELECT customers.customerName, orders.`status`, orders.comments FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE orders.`status`= "On Hold" AND orders.comments LIKE 'Customer credit limit exceeded%';

-- Nomor 2

SELECT customers.customerName, orders.`status`, orders.comments FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE orders.comments LIKE '%DHL%';

-- Nomor 3

SELECT customers.customerName, products.productName, orders.`status`, orders.shippedDate  FROM customers 
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN products
ON orderdetails.productCode = products.productCode
WHERE products.productName LIKE '%ferrari%' 
ORDER BY orders.shippedDate DESC;

-- Nomor 4

SELECT customerName, customerNumber FROM customers WHERE customerName LIKE 'Anton%';

SELECT productCode, productName FROM products WHERE productName LIKE '1934%';

SELECT * FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
WHERE customers.customerName LIKE '%Anton%';

INSERT INTO orders(customerNumber,orderNumber, `status`, orderDate, requiredDate)
VALUES(465, 10426, "In Process", CURRENT_DATE, ADDDATE(CURRENT_DATE, INTERVAL 1 YEAR));

INSERT INTO orderdetails
VALUES(10426, "S18_2957", 50, 62.46, 1); 


SELECT CURRENT_DATE
SELECT ADDDATE(CURRENT_DATE, INTERVAL 1 year)


