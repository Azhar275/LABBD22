-- SELECT *FROM customers WHERE creditlimit BETWEEN 100000 AND 1200000;
-- SELECT customerName FROM customers WHERE customerName LIKE '%lier%';
-- SELECT * FROM customers WHERE customername not BETWEEN 'A' AND 'C';
-- SELECT * FROM customers WHERE customername BETWEEN 'A' AND 'C';
-- SELECT * FROM customers WHERE customerName LIKE 'b%' and country='USA'
-- SELECT * FROM customers WHERE (customerName LIKE 'b%' or country='USA') AND city='NYC'
-- SELECT * FROM payments WHERE amount > 80000;
-- SELECT * FROM customers WHERE country IN ('USA', 'AUSTRALIA');
-- SELECT * FROM offices WHERE phone LIKE '+1%'
-- SELECT * FROM customers WHERE country='USA' and contactFirstName='Julie';
-- SELECT * FROM customers WHERE country='Australia' AND NOT city='Melbourne';
-- SELECT * FROM customers WHERE state IS not null

-- SELECT * FROM customers LIMIT 1,5
-- SELECT * FROM customerName, customers ORDER by customerName, country;
-- SELECT * FROM employees;

-- SELECT firstName, lastName FROM employees WHERE reportsTo IS NULL