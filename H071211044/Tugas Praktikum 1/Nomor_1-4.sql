# CREATE DATABASE TUGAS;
use tugas;
#1. MEMBUAT TABLE
CREATE TABLE office (
officeCode varchar (10) NOT NULL,
city varchar (50) NOT NULL,
phone varchar (50) NOT NULL,
addresline1 varchar (50) NOT NULL,
addresline2 varchar (50) NOT NULL,
state varchar (50),
country varchar (50) NOT NULL,
primary key (officeCode) 

);

#2. MENAMPILKAN ISI TABLE
DESC office;

#3. MODIFIKASI
ALTER TABLE office
modify phone int (20);
DESC office;

#4. MENGHAPUS
ALTER TABLE office
drop addresline2;
DESC office;

