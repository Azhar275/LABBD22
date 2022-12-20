# 1.“classicmodels”, tambahkan 3 data dlm orders&orderdetails, stelah itu commit:

show variables like '%autocommit%';
SET autocommit = 0; 

-- checking : normal data count 2996 | after transaction-> 
SELECT COUNT(*) FROM orderdetails; 

START TRANSACTION;

SELECT @oNum1:=MAX(orderNumber)+1 FROM orders;
SELECT @oNum2:=@oNum1 +1 FROM orders LIMIT 1;
SELECT @oNum3:=@oNUm2 +1 FROM orders LIMIT 1;

INSERT INTO orders (orderNumber, orderDate, requiredDate, shippedDate, `status`, comments, customerNumber)
VALUE (@oNum1, '2022-11-18', '2022-12-1', '', 'In Process', '', 103),
		(@oNum2, '2022-11-18', '2022-12-1', '', 'In Process', '', 103),
		(@oNum3, '2022-11-18', '2022-12-1', '', 'In Process', '', 103);

INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUE (@oNum1 , 'S18_3259', 50, '', 5),
		(@oNum2 , 'S18_3259', 50, '', 5),
		(@oNum3 , 'S18_3259', 50, '', 5);

COMMIT;


# 2. Hapus seluruh data dari tabel ordersdetails dan gunakan perintah ROLLBACK untuk mengembalikan data tersebut
BEGIN;
DELETE FROM orderdetails;
SELECT COUNT(*) FROM orderdetails; -- data count should be 0

ROLLBACK;
SELECT COUNT(*) FROM orderdetails; -- data count should be back to previous version