use classicmodels;

#1. 
set autocommit = off;
BEGIN;
#tabel orders 
insert into orders(orderNumber,orderDate,requiredDate,shippedDate,status,customerNumber)
value
(1, '2022-02-01', '2022-02-05', '2022-02-02', 'In Process', 103),
(2, '2022-01-10', '2022-01-18', '2022-01-15', 'In Process', 112),
(3, '2022-03-01', '2022-02-08', '2022-02-04', 'In Process', 114);
commit;

#orderdetails
insert into orderDetails(orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
value
(1, 'S10_1678', '10', 11.11, 11),
(2, 'S10_2016', '21', 22.22, 22),
(3, 'S10_4757', '31', 33.33, 33);
commit;

#2.
BEGIN;
set autocommit = off;
show create table products;
alter table products drop constraint `products_ibfk_1`;
show create table orders;
alter table orders drop constraint `orders_ibfk_1`;

delete from orderdetails;

rollback;

