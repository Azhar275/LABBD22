# CREATE DATABASE db_praktikum;
USE db_praktikum;

-- CREATE TABLE buku (
-- id_buku INT unique,
-- judul VARCHAR (225),
-- tahun_terbit INT,
-- pengarang VARCHAR (225),
-- primary key (id_buku)
-- ); 
-- -- DESC buku;

-- CREATE TABLE mahasiswa (
-- id_mahasiswa bigint unsigned unique,
-- nama varchar (225),
-- nim varchar (10) unique NOT NULL,
-- jk char (1),
-- primary key (id_mahasiswa)
-- );
-- DESC mahasiswa;

-- CREATE TABLE pinjam (
-- id_pinjam int unsigned unique,
-- tgl_pinjam datetime,
-- id_mahasiswa bigint unsigned unique,
-- id_buku int unique,
-- status_pengembalian tinyint (1),
-- primary key (id_pinjam),
-- foreign key(id_mahasiswa) references mahasiswa(id_mahasiswa),
-- foreign key (id_buku) references buku (id_buku)
-- ); 
-- DESC pinjam; 

-- ALTER TABLE pinjam
-- DROP Foreign key fk_pinjam_mahasiswa1 ;

-- ALTER TABLE mahasiswa MODIFY id_mahasiswa BIGINT UNSIGNED AUTO_INCREMENT NOT NULL; 

-- ALTER TABLE pinjam 
-- DROP Foreign key fk_pinjam_buku;

-- ALTER TABLE buku MODIFY id_buku INT unique AUTO_INCREMENT NOT NULL;

-- ALTER TABLE pinjam
-- ADD foreign key (id_mahasiswa) REFERENCES mahasiswa(id_mahasiswa); 

ALTER TABLE buku
ADD foreign key (id_buku) REFERENCES buku (id_buku); 

