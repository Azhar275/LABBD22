-- Menampilkan semua kolom dari tabel offices yang berasal dari kota 'San Francisco'

-- 1. SELECT * FROM offices WHERE city = 'San Francisco';

-- Menampilkan semua kolom dari tabel orderdetails, dimana quantityOrdered lebih besar dari 70, diurutkan secara menaik berdasarkan

-- orderLineNumber

-- 2.SELECT * from orderdetails WHERE quantityOrdered > 70 ORDER BY orderLineNumber ASC;

-- Menampilkan productLine apa saja yang tersedia pada tabel products;

-- 3.SELECT DISTINCT productLine from products;

-- Menampilkan customerNumber dan customerName pada tabel customers dengan

-- customerNumber dikisaran  100-150 serta mengganti alias

-- 4. SELECT customerNumber AS ID, customerNacustomersme AS Name FROM customers WHERE customerNumber > 100 AND customerNumber < 150;

-- 5. SELECT * FROM customers WHERE creditLimit = 0 AND country !='USA' ORDER BY customerName ASC LIMIT 10,10;