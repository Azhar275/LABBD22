# 1) Tampilkan kolom tanggal pemesanan product dalam urutan menurun untuk pesanan Ford Pickup Truck 1940. (database classicmodels)
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM products;

SELECT orderdetails.orderNumber, orders.orderDate, products.productName
FROM orderdetails
JOIN orders
ON  orderdetails.orderNumber = orders.orderNumber
JOIN products
ON products.productCode = orderdetails.productCode
WHERE orderdetails.productCode = 'S18_1097'
ORDER BY orders.orderDate DESC;
  

# 2) Tampilkan daftar nama produk yang dijual dengan harga kurang dari 80% dari MSRP (Harga Eceran Yang Disarankan). (database classicmodels) 
SELECT MSRP, 0.8 * MSRP FROM products;

SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM orderdetails;

SELECT products.productName, orderdetails.priceEach, products.MSRP, 0.8 * products.MSRP AS '80% MSRP'
FROM products
JOIN orderdetails
ON products.productCode = orderdetails.productCode
JOIN orders
ON orders.orderNumber = orderdetails.orderNumber
WHERE orderdetails.priceEach < 0.8 * products.MSRP


# 3) Tampilkan Pembimbing Utama dari Mahasiwa bernama Sulaeman! (database appseminar)
-- https://raw.githubusercontent.com/ToKu404/Lab-BasisData/main/appseminar.sql
SELECT * FROM ss_pembimbing;
SELECT * FROM ss_mahasiswa;
SELECT * FROM ss_dosen;

SELECT ss_dosen.nama, ss_mahasiswa.nama
FROM ss_dosen
JOIN ss_pembimbing
ON ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_utama
JOIN ss_mahasiswa
ON ss_mahasiswa.id_mahasiswa = ss_pembimbing.id_mahasiswa
WHERE ss_mahasiswa.nama = 'Sulaeman';


# 4) buat kolom baru dengan nama status bertipe data varchar pada customers
-- kemudian isi dengan nilai 'VIP' dg pelanggan yg jumlah pembayarannya pernah diatas 100.000
-- atau yg pernah mengorder barang dengan kuantitas 50 keatas
-- sisanya isi dengan nilai 'Regular'
SELECT * FROM customers;
SELECT * FROM orderdetails;
SELECT * FROM payments;
SELECT * FROM orders;

ALTER TABLE customers ADD `status` varchar (50);

UPDATE customers
SET `status` = 'Reguler';

SELECT customers.customerName, payments.amount, orderdetails.quantityOrdered
FROM customers
INNER JOIN payments
ON customers.customerNumber = payments.customerNumber
JOIN orders
ON orders.customerNumber = customers.customerNumber
JOIN orderdetails
ON orderdetails.orderNumber = orders.orderNumber;

UPDATE customers
INNER JOIN payments
ON customers.customerNumber = payments.customerNumber
JOIN orders
ON orders.customerNumber = customers.customerNumber
JOIN orderdetails
ON orderdetails.orderNumber = orders.orderNumber
SET customers.status = 'VIP'
WHERE payments.amount > 100000 OR orderdetails.quantityOrdered > 50;
SELECT * FROM customers WHERE `status` = 'VIP';


# 5) Hapuslah semua data pelanggan yg pernah membatalkan pesanannya
SELECT * FROM orders;
SELECT * FROM customers;
SELECT * FROM payments;
SELECT * FROM orderdetails;

DELETE customers, orders
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE orders.status = 'Cancelled';

/* SQL Error (1451): Cannot delete or update a parent row: a foreign key constraint fails 
(`classicmodels`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)) */
ALTER TABLE orders drop FOREIGN KEY orders_ibfk_1;
ALTER TABLE orders ADD FOREIGN KEY(customerNumber) REFERENCES customers(customerNumber) on delete cascade on update CASCADE;

/* SQL Error (1451): Cannot delete or update a parent row: a foreign key constraint fails 
(`classicmodels`.`orderdetails`, CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`orderNumber`) REFERENCES `orders` (`orderNumber`)) */
ALTER TABLE orderdetails DROP FOREIGN KEY orderdetails_ibfk_1;
ALTER TABLE orderdetails ADD FOREIGN KEY(orderNumber) REFERENCES orders(orderNumber) ON DELETE CASCADE ON UPDATE CASCADE;

/* SQL Error (1451): Cannot delete or update a parent row: a foreign key constraint fails 
(`classicmodels`.`payments`, CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)) */
ALTER TABLE payments DROP FOREIGN KEY payments_ibfk_1;
ALTER TABLE payments ADD FOREIGN KEY(customerNumber) REFERENCES customers(customerNumber) ON DELETE CASCADE ON UPDATE CASCADE;

-- mengecek, harusnya hasilnya tabel kosong
SELECT STATUS FROM orders 
WHERE STATUS = 'Cancelled';