USE classicmodels;

-- SET autocommit =0

-- START TRANSACTION;

-- SELECT * FROM orders;
-- SELECT * FROM orderdetails;
-- 
-- INSERT INTO orders
-- VALUE 
-- (10426, '2006-06-01', '2006-06-08', NULL, 'In Process', NULL, 209),
-- (10427, '2006-06-09', '2006-06-16', NULL, 'In Process', NULL, 145),
-- (10428, '2006-06-17', '2006-06-24', NULL, 'In Process', NULL, 412);

-- INSERT INTO orderdetails
-- VALUE 
-- (10426, 'S10_4757', 27, 12.34, 3),
-- (10427, 'S12_1108', 17, 56.78, 4),
-- (10428, 'S50_1514', 37, 90.12, 5);

-- COMMIT;
--
-- START TRANSACTION;
-- 
-- DELETE FROM orderdetails;
-- 
-- ROLLBACK;