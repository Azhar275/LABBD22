/* CREATE TABLE buku( 
 judul VARCHAR (255), 
 tahun_terbit INT, 
 pengarang VARCHAR (255), 
 id_buku INT, 
 PRIMARY KEY (id_buku)); */

/*CREATE TABLE mahasiswa(  
 nama VARCHAR (255), 
 im VARCHAR (10) NOT NULL, 
 jk CHAR (1),  
 id_mahasiswa BIGINT AUTO_INCREMENT, 
 PRIMARY KEY (id_mahasiswa), 
 UNIQUE (nim)); */

/*CREATE TABLE pinjam2(
 tgl_pinjam DATETIME, 
 id_mahasiswa BIGINT, 
 id_buku INT, 
 status_pengembalian TINYINT, 
 id_pinjam INT UNSIGNED AUTO_INCREMENT,
 FOREIGN KEY(id_mahasiswa) REFERENCES mahasiswa(id_mahasiswa),
 FOREIGN KEY(id_buku) REFERENCES buku(id_buku),
 PRIMARY KEY (id_pinjam));*/