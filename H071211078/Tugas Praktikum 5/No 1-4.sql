-- USE classicmodels;

#No 1
-- SELECT c.customerNumber,c.customerName, c.creditLimit,o.status,o.comments
-- FROM customers c
-- INNER JOIN orders o ON c.customerNumber = o.customerNumber
-- WHERE o.comments LIKE '%exceed%' AND o.status = 'On Hold';

-- No 2
-- SELECT c.customerName, o.status, o.comments
-- FROM customers c
-- LEFT JOIN orders o ON c.customerNumber = o.customerNumber
-- WHERE comments LIKE '%dhl%';
 
-- No 3
-- SELECT c.customerName, p.productName, o.status, o.shippedDate, od.productCode
-- FROM products p
-- JOIN orderdetails od ON p.productCode = od.productCode
-- JOIN orders o ON od.orderNumber = o.orderNumber
-- JOIN customers c ON o.customerNumber = c.customerNumber
-- WHERE productName LIKE '%Ferrari%'
-- ORDER BY shippedDate DESC;
-- 
-- No 4
-- INSERT INTO orders (orderNumber, orderDate, requiredDate, `status`, customerNumber)
-- VALUES (10426, CURRENT_DATE, DATEADD(year, 1, CURRENT_DATE), 'In Process', 465);
-- 
-- INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
-- VALUES (10426, 'S18_2957', 50, 62.46, 1);

-- SELECT * FROM products
-- WHERE productName = '1934 Ford V8 Coupe';
-- 
-- SELECT * FROM orders
-- WHERE orderNumber = 10426;
-- 
-- SELECT * FROM orderdetails
-- WHERE orderNumber = 10426;