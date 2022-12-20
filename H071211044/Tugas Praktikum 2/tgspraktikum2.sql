#create database classicmodels;
#use classicmodels ;

-- #1. memilih kolom dari tabel office san fransisco
-- SELECT * FROM offices WHERE city="san francisco" ;

-- #2. 
-- SELECT * FROM orderdetails WHERE quantityOrdered > 70 ORDER BY orderlineNumber ASC ;

-- #3.
-- SELECT DISTINCT productline FROM products ; 

#4. 
-- SELECT customerNumber AS NomorPelanggan, customerName AS NamaPelanggan FROM customers WHERE customerNumber <=150 and custumerNumber >=100 ;

-- #5.
-- SELECT * FROM customers WHERE country != 'usa' and creditlimit =0 ORDER BY customerName ASC limit 10, 10 ; 