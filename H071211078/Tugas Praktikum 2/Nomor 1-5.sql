#Query No.1
-- SELECT * FROM offices WHERE city="San Francisco";

#Query No.2
-- SELECT * FROM orderdetails WHERE quantityOrdered > 70
-- ORDER BY orderLineNumber;

#Query No.3
-- SELECT DISTINCT productLine FROM products;

#Query No.4
-- SELECT customerNumber AS custNum, customerName AS custName FROM customers WHERE customerNumber < 150 AND customerNumber > 100;

#Query No.5
-- SELECT * FROM customers 
-- WHERE country!="USA" AND creditLimit=0.0 
-- ORDER BY customerName LIMIT 10,10;