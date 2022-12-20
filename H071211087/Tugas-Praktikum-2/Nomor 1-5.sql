-- Soal 1 
SELECT * FROM offices WHERE city='san francisco'

-- Soal 2
SELECT * FROM orderdetails WHERE quantityordered >70 ORDER BY orderlinenumber

-- Soal 3
SELECT distinct productline FROM products

-- Soal 4
SELECT customernumber AS 'Nomor Pelanggan', customername AS 'Nama Pelanggan' FROM customers WHERE customernumber > 100 AND customernumber <150

-- Soal 5
SELECT * FROM customers WHERE country != 'usa' AND creditlimit = 0 ORDER BY customername ASC LIMIT 10,10