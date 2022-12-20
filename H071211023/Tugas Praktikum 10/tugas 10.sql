SELECT c.customerName,
CASE
	WHEN c.creditLimit - SUM(d.quantityOrdered * d.priceEach) > 0 THEN 'you are safe'
	WHEN c.creditLimit - SUM(d.quantityOrdered * d.priceEach) < 0 THEN 'you are in debt'
	ELSE 'you are running out of case'
END AS `Are You safe`, c.creditLimit - SUM(d.quantityOrdered * d.priceEach) as total
FROM customers c
JOIN orders o
USING (customerNumber)
JOIN orderdetails d
USING (orderNumber)
GROUP BY customerName
ORDER BY o.customerNumber