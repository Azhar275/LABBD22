-- soal no 1
SELECT customers.customerName, orders.`status`, orders.comments
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE orders.`status` = "On Hold" AND comments LIKE "%limit exceeded%";

-- soal no 2
SELECT customers.customerName, orders.`status`, orders.comments
FROM customers
INNER JOIN orders
on customers.customerNumber = orders.customerNumber
WHERE orders.comments LIKE "%DHL%";
 
-- soal no 3
SELECT p.productName, c.customerName, o.`status`, o.shippedDate
FROM products AS p
INNER JOIN orderdetails AS d
ON p.productCode = d.productCode
INNER JOIN orders AS o
ON o.orderNumber = d.orderNumber
INNER JOIN customers AS c
ON o.customerNumber = c.customerNumber
WHERE p.productName LIKE "%ferrari%"
ORDER BY o.shippedDate DESC;

-- soal no 4
INSERT INTO orders (orderNumber, orderDate, requiredDate, `status`, customerNumber)
VALUE (10426, CURRENT_DATE, ADDDATE(CURRENT_DATE, INTERVAL 1 YEAR), "In Process", 465)

INSERT INTO orderdetails VALUE (10426, "S18_2957", 50, 62.46, 1)

SELECT * FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
inner join orderdetails
ON orders.orderNumber = orderdetails.orderNumber
WHERE customers.customerName LIKE "%anton%"


-- SELECT ADDDATE('2021-12-12', INTERVAL 1 DAY)
-- SELECT * FROM products WHERE productName LIKE "%ford v8%"
-- SELECT * FROM orderdetails ORDER BY orderNumber DESC 