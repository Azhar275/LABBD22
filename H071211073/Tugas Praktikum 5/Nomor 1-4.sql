-- NOMOR 1 : siapa saja customers yang status pesananya tertahan karena melebihi batas kredit?
SELECT * FROM orders;
SELECT * FROM customers;

SELECT customers.customerName , orders.`status` , orders.comments 
FROM customers
JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE orders.`status` = 'On Hold' AND orders.comments LIKE '%credit limit exceeded%'


-- NOMOR 2 : siapa saja customers yang berkomentar untuk menggunakan jasa pengantaran DHL?
-- Tampilkan nama mereka, status order, serta komentar yang dimaksud

SELECT comments, `status`, customerNumber
FROM orders
WHERE comments LIKE '%DHL%'

SELECT customers.customerName, orders.`status`, orders.comments
FROM orders
JOIN customers
ON customers.customerNumber = orders.customerNumber
WHERE orders.comments LIKE '%DHL%'


-- NOMOR 3 : tampilkan semua order mobil bermerk Ferrari pd cm
-- tampilkan pula nama customers, nama mobilnya, status order, tanggal pengirimannya yang berurut dari terkini

SELECT * from customers;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM orderdetails;

SELECT customers.customerName, products.productName, orders.`status` , orders.shippedDate
FROM orders
JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
JOIN products
ON products.productCode = orderdetails.productCode
JOIN customers
ON customers.customerNumber = orders.customerNumber
WHERE products.productName LIKE '%Ferrari%'
ORDER BY orders.shippedDate DESC


-- NOMOR 4 : Anton Design , Ltd. memesan sebanyak 50 mobil "1934 Ford V8 Coupe". 
-- Masukkan data pemesanan ke database, dengan ketentuan:
-- status order:In Process / tgl order: function(tgl sekarang) / Deadline pengiriman: satu tahun dari sekarang
-- mobil akan dijual kembali dengan harga yang sama dengan harga eceran resmi/Harga Detail

# check if Anton Design had transaction
SELECT customerNumber, customerName FROM customers
WHERE customerName LIKE '%Anton%'
# Result cN=465 / blm pernah order

# check car
SELECT * FROM products
WHERE productName LIKE '1934 Ford V8 Coupe'
# pC=S18_2957

SELECT * FROM orders WHERE customerNumber = 465;
SELECT * FROM orderdetails;
SELECT * FROM products WHERE productCode = 'S18_2957';

INSERT INTO orders (orderNumber, orderDate, requiredDate, `status`, customerNumber)
VALUE (10425+1 , CURRENT_DATE , ADDDATE(CURRENT_DATE , INTERVAL 1 YEAR), 'In Process' , 465)

INSERT INTO orderdetails ()
VALUE (10426, 'S18_2957', 50, 62.46, 1)

SELECT customers.customerName, products.productName, orders.*, orderdetails.* 
FROM orders
JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
JOIN products
ON products.productCode = orderdetails.productCode
JOIN customers
ON customers.customerNumber = orders.customerNumber
WHERE customers.customerName LIKE 'Anton%'
