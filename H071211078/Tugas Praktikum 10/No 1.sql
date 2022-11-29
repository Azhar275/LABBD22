USE classicmodels;

SELECT c.customerName,
case 
when (c.creditLimit - sum(od.quantityOrdered * od.priceEach)) > 0 then 'You are safe'
when (c.creditLimit - sum(od.quantityOrdered * od.priceEach)) < 0 then 'You are in debt'
ELSE 'You are running out of credits'
END 'Are you safe ?',
(c.creditLimit-sum(od.quantityOrdered * od.priceEach)) 'Total'
FROM customers c
JOIN orders o ON o.customerNumber = c.customerNumber
JOIN orderdetails od ON od.orderNumber = o.orderNumber
GROUP BY (c.customerName)
ORDER BY c.customerNumber;