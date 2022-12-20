-- USE praktikum;

-- 3.

-- ALTER TABLE mahasiswa

-- ADD No_telp VARCHAR(20) NOT NULL

-- ADD Alamat VARCHAR(100)

-- ADD Email VARCHAR(50) NOT NULL

-- ADD Keterangan VARCHAR(20)

-- SET SQL_SAFE_UPDATES = 0;

-- DESC mahasiswa;

--  SELECT * FROM mahasiswa;

-- INSERT INTO mahasiswa(nama, nim, jk, id_mahasiswa, no_telp, alamat, email, keterangan)

-- VALUES('Azhar', 'H07120062', 'L', '123456', '0411870060', 'Makassar' ,'Azhar@student.ac.id', 'Asisten Praktikum');

-- VALUES('Ardhi' , 'H071211064', 'L', '27032703', '0411870052', 'Makassar' , 'Ardhi@student.ac.id', 'Mahasiswa');

-- UPDATE mahasiswa

-- SET Keterangan = '3'

-- WHERE nama = 'Ardhi';

-- 4.

-- DESC pinjam2;

-- INSERT INTO pinjam2

-- VALUES('2022-10-27 01:34:09', 27032702, 7482, 2 , 005);

-- VALUES('2022-10-15 04:42:12', 27032701, 7481, 1 , 006);

-- VALUES('2022-09-21 18:00:00', 27032659, 7321, 2 , 009);

-- VALUES('2022-10-31 13:20:09', 27032425, 7211, 2 , 012);

-- VALUES('2022-11-21 09:30:42', 2703256, 7325, 1 , 015);

-- SELECT * FROM pinjam2;

-- DESC buku;

-- INSERT INTO buku

-- VALUES('Setelah Aku Pergi', 2009, 'Sally Nichols' , 058);

-- VALUES('Filosofi Teras', 2022, 'Henry Manampiring' , 059);

-- VALUES('LIMITLESS', 2022, 'Nadhira Afifa' , 060);

-- VALUES('Ghazi', 2021, 'Felix Siauw' , 061);

-- VALUES('ALFATIH' , 2020, 'Felix Siauw', 062);

-- SELECT * FROM buku;

-- 5.

-- DESC mahasiswa;

-- SELECT * FROM MAHASISWA;

-- INSERT INTO mahasiswa

-- NIM menggunakan spasi maka ada unsur karakter atau diasumsikan bukan blank

-- VALUES('Felix Siauw ' ,' ', 'L', '8445', '0411823', 'Jakarta' , 'felix@student.ac.id', 'Mahasiswa');

-- NIM tidak menggunakan spasi karena tidak ada unsur karakter didalam '' maka diasumsikan blank

-- VALUES('Felix Siau ' ,'', 'L', '8449', '0411825', 'Makassar' , 'felixx@student.ac.id', 'Asisten');

-- VALUES('Muhammad Al Fatih' ,'H071211054', NULL, '8446', '0411823', 'Konstantinopel' , 'felix@student.ac.id', 'Mahasiswa');