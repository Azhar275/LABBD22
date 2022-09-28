-- SOAL NOMOR 1 : Tampilkan semua kolom dari tabel offices yang berasal dari kota ‘San Francisco’.
-- SELECT * FROM offices WHERE city= 'San Francisco'

-- SOAL NOMOR 2 : Tampilkan semua kolom dari tabel orderdetails, di mana quantityOrdered lebih besar dari 70, diurutkan secara menaik berdasarkan orderLineNumber.
-- SELECT * FROM orderdetails WHERE quantityOrdered > 70 ORDER BY orderLineNumber ASC

-- SOAL NOMOR 3 : Tampilkan productLine apa saja yang tersedia pada tabel products.
-- SELECT DISTINCT productLine FROM products 

-- SOAL NOMOR 4 : Tampilkan customerNumber dan customerName pada tabel customers dengan customerNumber di kisaran 100-150. Jangan lupa berikan alias pada kolom keluaran.
-- SELECT customerNumber AS 'Nomor',customerName AS 'Nama' FROM customers WHERE customerNumber<=150 AND customerNumber>=100 

-- SOAL NOMOR 5 : Berikan Data customers yang bukan dari USA yang tidak bisa lagi menarik uang dari rekeningnya. Urutkan berdasarkan customerName secara menaik lalu berikan data dari index (inklusif) 10 sampai 19.
-- SELECT * FROM customers WHERE country != 'USA' AND creditLimit=0 ORDER BY customerName ASC LIMIT 10,10