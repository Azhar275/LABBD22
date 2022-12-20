-- soal no 1

-- INSERT INTO employees (employeeNumber, lastName, firstname, extension, email, officeCode, reportsTo, jobTitle)
-- VALUE (1003, "Istiqamah", "Fadilah", "x2123", "fadilahistiqamah@gmail.com", 1, 1002, "VP Marketing");
-- SELECT * FROM employees
-- INSERT INTO employees VALUE (1004, "Hikma", "Nur", "x2104", "hikmahnr@gmail.com", 2, 1002, "VP Sales");
-- INSERT INTO employees VALUE (1005, "Putri", "Aul", "x2168", "aulputri@gmail.com", 3, 1056, "Sales manager");
-- SELECT * FROM employees

-- soal no 2
-- INSERT INTO offices (officeCode, city, phone, addressLine1, addressLine2, country, postalCode, territory)
-- VALUE (8, "Indonesia", "+62 85 23456754", "Sulawesi Selatan", "Makassar", "IDN", "94703", "EMEA");
-- SELECT * FROM offices

UPDATE employees 
SET officeCode = 8 
WHERE officeCode = 4 AND jobTitle = "Sales Rep";
SELECT * FROM employees
