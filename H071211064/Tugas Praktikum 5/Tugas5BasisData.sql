-- use classicmodels;

-- 1
/*
SELECT customers.customerNumber, customers.customerName, customers.creditLimit, orders.`status`, orders.comments
FROM customers 
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE orders.`status` = 'On Hold' AND orders.comments LIKE '%Customer credit limit exceeded%';  
*/


-- 2
/*
SELECT customers.customerNumber , customers.customerName, orders.comments, orders.`status`
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE orders.comments LIKE '%DHL%'; 
*/

-- 3 
/*
SELECT customers.customerName, orders.`status`, products.productName, orders.orderDate
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN products
ON orderdetails.productCode = products.productCode
WHERE products.productName LIKE '%Ferrari%' ORDER BY orders.orderDate DESC;
*/

-- 4
-- SELECT * FROM orders ORDER BY orderNumber DESC;
-- orders, orderdetails
-- SELECT * FROM products
-- WHERE productName LIKE '%ford V8%';
/*
 INSERT INTO orders(orderNumber, orderDate, requiredDate, status, customerNumber)
 VALUES(10426 , current_date, adddate(current_date, interval 1 year), 'In Process', 465)

*/
 -- INSERT INTO orderdetails
-- VALUES(10426, 'S18_2957', 50, 62.46, 1)
-- SELECT * FROM customers 
-- INNER JOIN orders ON customers.customerNumber = orders.customerNumber INNER JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber 
-- WHERE customers.customerName LIKE '%anton%'*/