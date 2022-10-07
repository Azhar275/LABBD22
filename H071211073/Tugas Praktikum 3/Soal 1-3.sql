-- SOAL 1
-- Tambahkanlah 3 orang employee baru pada tabel employees dalam database Classic Models dengan salah satu nama employee merupakan nama anda.
INSERT INTO employees VALUE(2000, 'Bonita', 'Djulizah', 'X420', 'djul.b74123@gmail.com', '7', 1621, 'Sales Rep');
INSERT INTO employees VALUE(2001, 'Kugimiya', 'Rie', 'X3005', 'rie_k@gmail.com', '5', 1002, 'Vice President');
INSERT INTO employees VALUE(2002, 'Pattel', 'Sanjay', 'X999', 'sanjayya@gmail.com', '6', 1056, 'Sales Manager');
-- 
-- SOAL 2
-- Tambahkan data baru pada tabel offices  
-- ubahlah nilai officeCode pada tabel employees dengan data office yang baru untuk data yang memiliki nilai officeCode = ‘4’ dan jobTitle = ‘Sales Rep’

INSERT INTO offices VALUE (8, 'Makassar', '+000', 'jl.umum', 'kompleks keren', 'Sulawesi', 'Indonesa', '0000', 'Asia');

UPDATE employees 
SET officeCode = '8'
WHERE officeCode = '4' AND jobTitle = 'Sales Rep';

-- SOAL 3
-- Hapuslah data pada tabel payments yang memiliki nilai amount yang lebih kecil dari 10.000
DELETE FROM payments WHERE amount < 10000

-- SOAL 2+ (sama dg soal nomor 2)
-- sebuah kantor baru didirikan untuk para karyawannya (employee)
-- pihak pengelola DB ingin memindahkan karyawan berjabatan SALES REP dari kantor 4, ke kantor yang baru!
  
  SELECT * FROM payments