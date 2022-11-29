-- nomor 1--
SET autocommit = 0;
SELECT * FROM orders
SELECT * FROM orderdetails

BEGIN;
INSERT INTO orders(orderNumber, orderDate, requiredDate, shippedDate, `status`, customerNumber)
VALUES (10432, '2010-08-20', '2010-08-25', '2010-08-22','Shipped', 103),
(10433, '2022-10-22', '2022-10-29', '2022-08-24','In Process', 112),
(10434, '2022-06-12', '2022-06-17', '2022-06-13','Shipped', 121);

INSERT INTO orderdetails(orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUE (10432, 'S18_2248', 20, 135.60, 2 ),
(10433, 'S50_1341', 10, 150.10, 1 ),
(10434, 'S18_2248', 50, 170.60, 4 );
COMMIT;

-- nomor 2--
SELECT * FROM orderdetails;
BEGIN;
DELETE FROM orderdetails 
ROLLBACK;