USE classicmodels;

#1.
-- SELECT customers.customerName, orders.status, orders.comments
-- FROM customers 
-- INNER JOIN orders 
-- ON customers.customerNumber = orders.customerNumber
-- WHERE orders.status = 'on hold' and orders.comments LIKE '%credit limit exceed%'

#2.
-- SELECT customers.customerName, orders.status, orders.comments
-- FROM customers
-- INNER JOIN orders
-- ON customers.customerNumber = orders.customerNumber
-- WHERE orders.comments LIKE '%DHL%'

#3.
-- SELECT customers.customerName, products.productName, orders.status, orders.shippedDate
-- FROM customers
-- INNER JOIN orders
-- ON customers.customerNumber = orders.customerNumber
-- INNER JOIN orderdetails
-- ON orders.orderNumber = orderdetails.orderNumber
-- INNER JOIN products
-- ON orderdetails.productCode = products.productCode 
-- WHERE products.productName LIKE '%ferrari%'
-- ORDER BY shippedDate DESC

#4.
-- INSERT INTO orders (orderNumber, orderDate, requiredDate, status, customerNumber)
-- VALUES (10426, current_date, adddate(current_date,interval 1 year), 'in process', 465)

-- INSERT INTO orderdetails
-- VALUES (10426, 'S18_2957', 50, 62.46, 1) 

-- SELECT * FROM customers 
-- INNER JOIN orders 
-- ON customers.customerNumber = orders.customerNumber
-- INNER JOIN orderdetails
-- ON orders.orderNumber = orderdetails.orderNumber 
-- WHERE customers.customerName LIKE '%Anton%'

