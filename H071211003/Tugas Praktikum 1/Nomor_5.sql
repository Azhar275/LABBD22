-- CREATE DATABASE db_praktikum;
USE db_praktikum;
CREATE TABLE buku (
judul VARCHAR (255),
tahun_terbit INT,
pengarang VARCHAR (255),
id_buku INT,
PRIMARY KEY (id_buku)
);
DESC buku;

CREATE TABLE mahasiswa (
nama VARCHAR (255),
nim VARCHAR (10),
jk CHAR (1),
id_mahasiswa BIGINT UNSIGNED,
PRIMARY KEY (id_mahasiswa)
);
ALTER TABLE mahasiswa MODIFY COLUMN nim VARCHAR(10) UNIQUE NOT NULL;
DESC mahasiswa;

CREATE TABLE pinjam (
tgl_pinjam DATETIME,
id_mahasiswa BIGINT UNSIGNED,
id_buku INT,
status_pengembalian TINYINT(1),
id_pinjam INT UNSIGNED,
PRIMARY KEY (id_pinjam),
FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa (id_mahasiswa),
FOREIGN KEY (id_buku) REFERENCES buku (id_buku)
);

DESC pinjam;
DROP TABLE pinjam;
ALTER TABLE pinjam MODIFY COLUMN id_mahasiswa BIGINT UNSIGNED UNIQUE;
ALTER TABLE pinjam MODIFY COLUMN id_buku INT UNIQUE;
ALTER TABLE pinjam MODIFY COLUMN id_pinjam INT UNSIGNED NOT NULL;
