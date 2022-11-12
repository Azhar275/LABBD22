use classicmodels;

#1.
-- select customerName, pembayaranTerbesar, pembayaranTerkecil
-- from 	(select customerNumber, max(amount) as pembayaranTerbesar, 
-- 		min(amount) as pembayaranTerkecil
-- 		from payments
-- 		group by customerNumber) as pay 
-- inner join customers 
-- using(customerNumber);

#no.2
-- select concat(firstName, ' ', lastName) as nama, officeCode
-- from employees
-- where officeCode =
-- (select officeCode from
-- (select count(employeeNumber) as jumlah, offices.officeCode
-- from offices
-- inner join employees
-- on offices.officeCode = employees.officeCode
-- group by officeCode
-- order by jumlah desc
-- limit 1) as aa);


#no.3
-- select productName, productScale
-- from products
-- where productName in
--  (select productName from products
--  where productName like '%ford%')
--  
 #no.4
-- select customers.customerName, concat(employees.firstName, ' ', employees.lastName) as nama, orders.orderNumber, od.biaya
-- from customers
-- inner join employees
-- on customers.salesRepEmployeeNumber = employees.employeeNumber
-- natural join orders
-- inner join (select sum(quantityOrdered * priceEach) as biaya, orderNumber from orderdetails
-- group by orderNumber
-- order by biaya desc
-- limit 1) as od 
-- on orders.orderNumber = od.orderNumber;

--  
--  #no.5
 -- select distinct country, length(country) as `panjang karakter` from customers
--  where length(country) =
-- (select max(length(country)) from customers ) or
--  length(country) =
--  (select min(length(country)) from customers );

 