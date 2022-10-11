CREATE DATABASE db_praktikum;
USE db_praktikum;
CREATE TABLE buku (
	id_buku INT AUTO_INCREMENT,
	judul VARCHAR(255),
	tahun_terbit INT,
	pengarang VARCHAR(255),
	PRIMARY KEY (id_buku)
);
CREATE TABLE mahasiswa (
	id_mahasiswa BIGINT UNSIGNED AUTO_INCREMENT,
	nama VARCHAR(255),
	nim VARCHAR(10) NOT NULL UNIQUE,
	jk CHAR(1),
	PRIMARY KEY (id_mahasiswa)
);
CREATE TABLE pinjam(
	id_pinjam INT UNSIGNED AUTO_INCREMENT,
	tgl_pinjam DATETIME,
	id_mahasiswa BIGINT UNSIGNED UNIQUE,
	id_buku INT UNIQUE,
	status_pengembalian TINYINT(1) DEFAULT(0),
	PRIMARY  KEY (id_pinjam),
	FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa (id_mahasiswa),
	FOREIGN KEY (id_buku) REFERENCES buku (id_buku)
	);
