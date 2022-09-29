USE classicmodels;
-- Soal 1
-- SELECT * FROM offices WHERE city='San Francisco';

-- Soal 2
-- SELECT * FROM orderdetails WHERE quantityOrdered >70 ORDER BY orderLineNumber;

-- Soal 3
-- SELECT DISTINCT productLine FROM products;

-- Soal 4
-- SELECT customerNumber AS 'No. Kostumer', customerName AS 'Nama Kostumer' FROM customers
-- WHERE customerNumber>100 AND customerNumber<150;

-- Soal 5
-- SELECT * FROM customers
-- WHERE country != 'USA' AND creditlimit=0
-- ORDER BY customerName
-- LIMIT 10, 10;