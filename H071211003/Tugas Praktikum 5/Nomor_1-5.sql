-- Nomor 1 
SELECT customers.customerName, customers.creditLimit, orders.`status`, orders.comments
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE orders.`status` = "On hold" AND orders.comments LIKE "%credit limit exceed%"

-- nomor 2
SELECT customers.customerName, orders.`status`, orders.comments
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE orders.comments LIKE "%requested%DHL%"

-- nomor 3
SELECT customers.customerName, products.productName, orders.`status`, orders.shippedDate
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN products
ON orderdetails.productCode = products.productCode
WHERE products.productName LIKE "%Ferrari%" ORDER BY shippedDate DESC

-- nomor 4
INSERT INTO orders(orderNumber, orderDate, requiredDate, `status`, customerNumber)
VALUE (10426, CURRENT_DATE, ADDDATE(CURRENT_DATE, INTERVAL 1 YEAR), "In process", 465)

INSERT INTO orderdetails
VALUE (10426, "S18_2957", 50, 62.46, 1)
SELECT * FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
WHERE customerName LIKE "Anton%"
SELECT * FROM products
WHERE productName = "1934 Ford V8 coupe"
SELECT current_date --> fungsi untuk mendapatkan tanggal sekarang
SELECT ADDDATE("2022-10-20", INTERVAL 1 YEAR ) 

-- mengecek apakah data sudah masuk
-- SELECT * FROM customers
-- WHERE customerName LIKE "%Anton Design%"