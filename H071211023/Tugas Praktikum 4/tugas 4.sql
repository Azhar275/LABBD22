-- soal no 1
SELECT orders.orderDate, products.productName
FROM orders 
INNER JOIN orderdetails 
ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN products
ON orderdetails.productCode = products.productCode
WHERE orderdetails.productCode = 'S18_1097'
ORDER BY orders.orderDate DESC;


-- soal no 2
SELECT products.productName, orderdetails.priceEach, products.MSRP, 0.8 * products.MSRP
FROM products
INNER JOIN orderdetails
ON products.productCode = orderdetails.productCode
WHERE orderdetails.priceEach < 0.8 * products.MSRP


-- soal no 3
SELECT ss_dosen.nama, ss_mahasiswa.nama
FROM ss_dosen 
INNER JOIN ss_pembimbing
ON ss_pembimbing.id_pembimbing_utama = ss_dosen.id_dosen
INNER JOIN ss_mahasiswa
ON ss_pembimbing.id_mahasiswa = ss_mahasiswa.id_mahasiswa
WHERE ss_mahasiswa.nama = "sulaeman";


-- soal no 4
-- membuat kolom baru
ALTER TABLE customers 
ADD STATUS VARCHAR (100);

-- UPDATE customers SET STATUS = "Reguler";

UPDATE customers 
INNER JOIN payments
ON customers.customerNumber = payments.customerNumber
INNER JOIN orders
ON orders.customerNumber = customers.customerNumber
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber 
SET customers.status = "VIP"
WHERE payments.amount > 100000 OR orderdetails.quantityOrdered > 50;
SELECT * FROM customers WHERE STATUS = "VIP";


-- SELECT c.customerName, c.status, p.amount, o.quantityOrdered
-- FROM customers AS c
-- INNER JOIN payments AS p
-- ON c.customerNumber = p.customerNumber
-- INNER JOIN orders AS r
-- ON r.customerNumber = c.customerNumber
-- INNER JOIN orderdetails AS o
-- ON o.orderNumber = r.orderNumber


-- soal no 5
DELETE customers, orders 
FROM  customers
INNER JOIN orders 
ON  customers.customerNumber =  orders.customerNumber 
WHERE orders.status = "Cancelled";


-- error 1
drop foreign key 
ALTER TABLE orders DROP FOREIGN KEY orders_ibfk_1; 

-- tambahkan kembali foreign key yang telah dihapus sebelumnya
ALTER TABLE orders ADD FOREIGN KEY (customerNumber) REFERENCES customers (customerNumber) ON DELETE CASCADE ON UPDATE CASCADE;

-- error 2
ALTER TABLE orderdetails DROP FOREIGN KEY orderdetails_ibfk_1; 
ALTER TABLE orderdetails ADD FOREIGN KEY (orderNumber) REFERENCES orders (orderNumber) ON DELETE CASCADE ON UPDATE CASCADE;

-- error 3
ALTER TABLE payments DROP FOREIGN KEY payments_ibfk_1; 
ALTER TABLE payments ADD FOREIGN KEY (customerNumber) REFERENCES customers (customerNumber) ON DELETE CASCADE ON UPDATE CASCADE;

-- SELECT * FROM orders WHERE STATUS = "cancelled";
-- SELECT * FROM payments;
-- SELECT * FROM orderdetails;

