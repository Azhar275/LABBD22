-- Nomor 1
SELECT * FROM offices WHERE city = 'San Francisco';

-- Nomor 2
SELECT * FROM orderdetails WHERE quantityOrdered >70 ORDER BY orderLineNumber ASC;
-- 
-- Nomor 3
SELECT DISTINCT productLine FROM products;

-- Nomor 4
SELECT customerNumber AS 'nomor', customerName AS 'nama' FROM customers WHERE customerNumber >=100 AND customerNumber <=150;

-- Nomor 5
SELECT * FROM customers WHERE country != 'USA' AND creditLimit =  '0' ORDER BY customerName ASC LIMIT 10, 10
