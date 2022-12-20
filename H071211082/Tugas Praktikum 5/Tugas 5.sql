No1
SELECT DISTINCT o.orderNumber, o.`status`, c.customerName, o.comments
FROM orders AS o
JOIN customers AS c
ON o.customerNumber = c.customerNumber
WHERE o.comments LIKE "%credit limit exceeded%" AND o.`status` = 'On Hold'

No2
SELECT o.`status`, o.comments, c.customerName
FROM orders AS o
JOIN customers AS c
ON o.customerNumber = c.customerNumber
WHERE o.comments LIKE '%DHL%'

No3
SELECT p.productName, od.productCode, o.shippedDate, o.`status`,c.customerName
From products AS p
JOIN orderdetails AS od
ON p.productCode = od.productCode
JOIN orders AS o
ON od.orderNumber = o.orderNumber
JOIN customers AS c
ON o.customerNumber = c.customerNumber
WHERE p.productName LIKE '%Ferrari%'
ORDER BY shippedDate DESC


#No4
SELECT * FROM customers WHERE customerName LIKE '%Anton Designs%';
INSERT INTO orders (orderNumber, orderDate, requiredDate, `status`, customerNumber)
VALUES (10426, CURRENT_DATE, DATE_ADD(CURRENT_DATE, INTERVAL 1 YEAR), 'In Process', 465);

INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES (10426, 'S18_2957', 50, 62.46, 1);

SELECT * FROM orders WHERE orderNumber = 10426;
SELECT * FROM orderdetails WHERE orderNumber = 10426;
SELECT * FROM products WHERE productCode = 'S18_2957';


