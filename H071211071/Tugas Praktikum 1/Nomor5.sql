-- CREATE DATABASE db_praktikum;
-- SHOW DATABASES;
-- USE db_praktikum;
-- CREATE TABLE buku1(
-- judul VARCHAR(255),
-- tahun_terbit INT,
-- pengarang VARCHAR(255),
-- id_buku INT,
-- PRIMARY KEY (id_buku));
-- DESCRIBE buku1;

-- CREATE TABLE mahasiswa1(
-- nama VARCHAR(255),
-- nim VARCHAR(10) NOT NULL,
-- jk CHAR (1),
-- id_mahasiswa BIGINT 	UNSIGNED AUTO_INCREMENT,
-- PRIMARY KEY (id_mahasiswa),
-- UNIQUE (nim)); 
-- DESCRIBE mahasiswa1;

-- CREATE TABLE pinjam1(
-- tgl_pinjam DATETIME,
-- id_mahasiswa BIGINT UNSIGNED,
-- id_buku INT,
-- status_pengembalian TINYINT (1),
-- id_pinjam INT UNSIGNED AUTO_INCREMENT,
-- FOREIGN KEY(id_mahasiswa) REFERENCES mahasiswa1(id_mahasiswa),
-- FOREIGN KEY(id_buku) REFERENCES buku1(id_buku),
-- PRIMARY KEY (id_pinjam));
DESCRIBE pinjam1;