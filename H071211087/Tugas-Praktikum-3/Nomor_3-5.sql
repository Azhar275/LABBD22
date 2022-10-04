-- Nomor 3
USE db_praktikum;
ALTER TABLE mahasiswa
ADD column no_telp VARCHAR(20) NOT NULL,
ADD column alamat VARCHAR(100),
ADD column email VARCHAR(50) NOT NULL,
ADD COLUMN keterangan VARCHAR(20);
describe mahasiswa;

insert into mahasiswa(nama, nim, jk, no_telp, alamat, email, keterangan)
values ("Syarif Hidayat","H071211087","L","08123456789","jalan merdeka","syaarifhd@gmail.com","Semester 3"),
	   ("MUH. FAJAR SIDDIQ ARAFAT","H071211078","08123456788","L","Jalan unhas","fajar@gmail.com","Semester 3"),
       ("AGUNG KARTIKA ARDHIYANDA","H071211064","L","08123456787","Jalan unhas","ardhi@gmail.com","Semester 3"),
       ("MUHAMMAD DZACKY ILHAM","H071211071","L","08123456786","Jalan unhas","dzacky@gmail.com","Semester 3"),
       ("MUH KHALILUR RAHMAN","H071211082","L","08123456785","Jalan unhas","khalil@gmail.com","Semester 3"),
       ("MUHAMMAD IKRAM HIDAYAT","H071211030","L","08123456784","Jalan unhas","ikram@gmail.com","Semester 3"),
       ("MUHAMMAD RIFKY AQID","H071211077","L","08123456783","Jalan unhas","aqid@gmail.com","Semester 3"),
       ("ADELIA PUSPITA HILAL","H071211044","P","08123456782","Jalan unhas","adelia@gmail.com","Semester 3"),
       ("FADILAH ISTIQAMAH","H071211023","P","08123456781","Jalan unhas","fadilah@gmail.com","Semester 3"),
       ("SELVIANI AMALIA KARTIKA","H071211003","P","08123456779""Jalan unhas","selvi@gmail.com","Semester 3"),
       ("DJULIZAH BONITA LANINI","H071211073","P","08123456769","Jalan unhas","djul@gmail.com","Semester 3"),
       ("SYIFA UR RAHMI","H0712110766","P","08123456759","Jalan unhas","syifa@gmail.com","Semester 3");
select * from mahasiswa;

-- Nomor 4
insert into buku
values ("Harry Potter","2003","Jk Rowling",""),
       ("Laskar Pelangi","2010","Basuki",""),
       ("Rich dad poor dad","2005","Syarif",""),
       ("Kalkulus 1","1901","Prof",""),
       ("Anatomic Habits","2015","Faiz","");
select * from buku;

insert into pinjam
values ("2020-02-02",3,3,"1",""),
       ("2020-02-03",1,3,"2",""),
       ("2020-02-04",2,2,"4",""),
       ("2020-02-05",2,1,"3",""),
       ("2020-02-06",3,3,"1","");
select * from pinjam;

-- Nomor 5
insert into mahasiswa(nama, nim, jk, no_telp, alamat, email, keterangan)
values ("Bace","H071231087","L","08123456789","jalan merdeka","","Semester 3"),
       ("Baco","H071221087","L","08123456788",null,"syaarifhd@gmail.com","Semester 3");
select * from mahasiswa;
