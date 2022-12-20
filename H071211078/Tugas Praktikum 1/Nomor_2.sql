-- No 5
-- CREATE DATABASE db_praktikum
-- USE database db_praktikum

-- CREATE TABLE buku(
-- judul VARCHAR(255),
-- tahun_terbit INT,
-- pengarang VARCHAR(255),
-- id_buku INT PRIMARY KEY AUTO_INCREMENT)

-- CREATE TABLE mahasiswa (
-- nama VARCHAR(255),
-- nim VARCHAR(10) UNIQUE,
-- jk CHAR(1),
-- id_mahasiswa BIGINT unsigned PRIMARY KEY AUTO_INCREMENT)

-- CREATE TABLE pinjam (
-- tgl_pinjam DATETIME,
-- id_mahasiswa BIGINT UNSIGNED NOT NULL,
-- id_buku INT NOT NULL,
-- FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa(id_mahasiswa),
-- FOREIGN KEY (id_buku) REFERENCES buku(id_buku),
-- id_pinjam INT UNSIGNED PRIMARY KEY AUTO_INCREMENT)
