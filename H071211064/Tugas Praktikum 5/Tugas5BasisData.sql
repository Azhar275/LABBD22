use classicmodels;

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

SELECT customers.customerName, orders.`status`, products.productName, orders.orderDate
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN products
ON orderdetails.productCode = products.productCode
WHERE products.productName LIKE '%Ferrari%' ORDER BY orders.orderDate DESC;

-- 4
