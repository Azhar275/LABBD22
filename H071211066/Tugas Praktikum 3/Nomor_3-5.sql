USE db_praktikum;

-- Nomor 3 --

ALTER TABLE mahasiswa
ADD No_Telp VARCHAR(20) NOT NULL;
ADD Alamat VARCHAR(100);
ADD Email VARCHAR(50) NOT NULL;
ADD keterangan VARCHAR(20);

INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
VALUE 
(1, 'Syifa Ur Rahmi', 'H071211066', 'P', '082350687677', 'Ramsis Unit 2', 'sifasisi3@gmail.com', '3'), 
(2, 'Agung Kartika Ardhiyanda', 'H071211046', 'L', '085276890243', 'Gowa', 'ardhiy@gmail.com', '3'),
(3, 'Muhammad Dzacky Ilham', 'H071211071', 'L', '085255467589', 'BTP', 'zdckyy@gmail.com', '3'),
(4, 'Muh. Khalilur Rachman G', 'H071211082', 'L', '082351067899', 'Jl. Sahabat 2', 'khalil@gmail.com', '3'),
(5, 'Muhammad Ikram Hidayat', 'H071211030', 'L', '082340983455', 'Jl. Damai', 'ikr@gmail.com', '3'),
(6, 'Muhammad Rifky Aqid', 'H071211077', 'L', '087655478966', 'BTP', 'qid@gmail.com', '3'),
(7, 'Adelia Puspita Hilal', 'H071211044', 'P', '082655468906', 'BTP', 'adel@gmail.com', '3'),
(8, 'Fadilah Istiqomah', 'H071211023', 'P', '082350478066', 'Jl. Workshop', 'fadilah@gmail.com', '3'),
(9, 'Selviani Amalia Kartika', 'H071211003', 'P', '081033478765', 'BTP', 'selvi@gmail.com', '3'),
(10, 'Muhammad Fajar Siddiq Arafat', 'H071211078', 'L', '083655079950', 'Perdos', 'fajar@gmail.com', '3'),
(11, 'Djulizah Bonita Lanini', 'H071211073', 'P', '085035488065', 'BTP', 'djulizah@gmail.com', '3'),
(12, 'Syarif Hidayat', 'H071211087', 'L', '085635408900', 'Rusunawa', 'msyarif@gmail.com', '3');

-- Nomor 4 --

INSERT INTO buku
VALUE 
(1, 'Bumi', 2019, 'Tere Liye'),
(2, 'Mr.Glass', 2020, 'Rahmi Amir'),
(3, 'Air Mata Ibu', 2022, 'Dzul F'),
(4, 'Mariposa', 2018, 'Aisyah'),
(5, 'Gezz & Ann', 2019, 'Hikmah abd');

-- Nomor 5 --

INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, Alamat, Email, Keterangan)
VALUE (13, 'Fulan', 'H0712110xx', 'L', 'Jl. xxx', 'xxx@gmail.com', '1');

INSERT INTO mahasiswa (id_mahasiswa, nama, nim, No_telp, Alamat, Email, Keterangan)
VALUE (14, 'Fulana', 'H071211xxx', 'xxxxxxxxxxxx','Jl. xxx', 'xxx@gmail.com', '1');

