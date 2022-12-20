create table buku(
buku varchar(225),
tahun_terbit int,
pengarang varchar(225),
id_buku int auto_increment,
primary key(id_buku)
);
create table mahasiswa(
nama varchar(225),
nim varchar(10) not null,
jk char(1),
id_mahasiswa bigint unsigned auto_increment,
UNIQUE(nim),
primary key(id_mahasiswa)
);
create table pinjam(
tgl_pinjam datetime,
id_mahasiswa bigint unsigned,
id_buku int,
status_pembelian tinyint(1) default'0',
id_pinjam int unsigned auto_increment,
primary key(id_pinjam),
foreign key (id_buku) references buku (id_buku),
foreign key (id_mahasiswa) references mahasiswa (id_mahasiswa)
);
show tables;
desc pinjam;