USE classicmodels;

SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM orderdetails;

SELECT `customerName`, `Total`,
CASE
 WHEN `Total` > 0 THEN 'You are safe'
 WHEN `Total` < 0 THEN 'You are in debt'
 WHEN `Total` = 0 THEN 'You are running out of credits'
 END
AS `Are you safe`
FROM (
SELECT customers.customerName AS "customerName", customers.creditLimit AS "creditLimit",
(customers.creditLimit-(SUM(orderdetails.quantityOrdered*orderdetails.priceEach))) AS "Total"
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON orderdetails.orderNumber = orders.orderNumber
GROUP BY customers.customerName
ORDER BY customers.customerNumber) t;