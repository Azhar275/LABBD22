-- use classicmodels;
-- SET SQL_SAFE_UPDATES = 0;

-- 1
/*
SELECT orders.orderDate, products.productName
FROM orders
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN products
ON orderdetails.productCode = products.productCode
WHERE productName = '1940 Ford Pickup Truck' ORDER BY orders.orderDate DESC;
*/ 

-- 2
/*
SELECT products.productName, products.MSRP, orderdetails.priceEach, 0.8 * products.MSRP
FROM products
INNER JOIN orderdetails
ON products.productCode = orderdetails.productCode
WHERE orderdetails.priceEach < ( 0.8 * products.MSRP ) 

*/
-- 4

-- AlTER TABLE customers
-- ADD `status` VARCHAR(255);	

/*
SELECT count(DISTINCT orderdetails.orderNumber)
FROM orderdetails
INNER JOIN orders
ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers 
ON orders.customerNumber = customers.customerNumber
INNER JOIN payments
ON customers.customerNumber = payments.customerNumber
WHERE payments.amount > 100000 OR quantityOrdered > 50
*/


-- UPDATE customers
-- SET `status` = 'Regular'


/*
UPDATE customers
INNER JOIN payments
ON customers.customerNumber = payments.customerNumber
INNER JOIN orders
ON orders.customerNumber = customers.customerNumber
INNER join orderdetails
ON orderdetails.orderNumber = orders.orderNumber
SET customers.status = 'VIP'
WHERE payments.amount > 100000 OR orderdetails.quantityOrdered > 50
*/

-- SELECT count(*) from customers  WHERE `status` = 'VIP'

 -- SELECT * FROM orders WHERE `status` = 'Cancelled'


/*
DELETE orders FROM orders
INNER JOIN customers
ON orders.customerNumber = customers.customerNumber
WHERE orders.`status` = 'Cancelled'
*/

-- 448, 496, 131

-- SELECT * from orders WHERE `status` = 'Cancelled'

-- ALTER TABLE orderdetails DROP foreign key orderdetails_ibfk_1
-- ALTER TABLE orderdetails ADD foreign key(orderNumber) REFERENCES orders(orderNumber) ON UPDATE CASCADE ON DELETE CASCADE




