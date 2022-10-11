USE classicmodels

-- nomor 1
INSERT INTO employees
VALUES (1234, 'Kartika', 'Selviani Amalia', 'x101', 'selvianicantik@gmail.com', 2, 1002, 'Influencer'),
(1235, 'Meilani', 'Sofi', 'x101', 'sasasisi@gmail.com', 2, 1002, 'painter'),
(1236, 'Lestari', 'Sri', 'x101', 'lalalili@gmail.com', 2, 1002, 'doctor');

-- Nomor 2
INSERT INTO offices
VALUES (8, 'Busan', '+6281322115577', 'Myongdong', 'Gedung SM', 'KR', 'South Korean', 12345, 'Korean');

UPDATE employees
SET officeCode = 8
WHERE officeCode = 4 AND jobTitle = 'Sales Rep';