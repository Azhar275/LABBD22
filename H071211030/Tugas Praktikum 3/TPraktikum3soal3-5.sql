USE db_praktikum;

-- ALTER TABLE mahasiswa
-- ADD No_telp VARCHAR(20) NOT NULL;
-- 
-- ALTER TABLE mahasiswa
-- ADD Alamat VARCHAR(100);
-- 
-- ALTER TABLE mahasiswa
-- ADD Email VARCHAR(50) NOT NULL;

-- ALTER TABLE mahasiswa
-- ADD Keterangan VARCHAR(20);

-- DELETE FROM pinjam WHERE id_buku='1';

-- Soal 3
-- SELECT * FROM mahasiswa
-- INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
-- VALUE (17, 'Agung Kartika Ardhiyanda', 'H071211064', 'L', '+1-729-333-2022', '71533 Lester Glen Apt. 239', 'bartell.dejuan@hotmail.com', NULL);

-- INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
-- VALUE (18, 'Muhammad Dzaky Ilham', 'H071211071', 'L', '1-447-680-1658', '55119 Vicky Land Suite 516', 'dashawn22@yahoo.com', NULL);

-- INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
-- VALUE (19, 'Muh. Khalilur Rachman G.', 'H071211082', 'L', '858-329-4057 x5638', '912 Gutkowski Burgs', 'stanley.dibbert@mayer.biz', NULL);

-- INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
-- VALUE (20, 'Muhammad Ikram Hidayat', 'H071211030', 'L', '539-205-4688', '4198 Lucy Mission Suite 083', 'jermain56@gibson.com', NULL);

-- INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
-- VALUE (21, 'Muhammad Rifky Aqid', 'H071211077', 'L', '(625) 674-6416 x3861', '453 Kutch Tunnel Suite 637', 'schultz.hailee@lind.info', NULL);

-- INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
-- VALUE (22, 'Adelia Puspita Hilal', 'H071211044', 'P', '(361) 987-7017', '89304 Caitlyn Coves Apt. 608', 'sherwood14@harber.com', NULL);

-- INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
-- VALUE (23, 'Fadilah Istiqamah', 'H071211023', 'P', '+1.916.497.6876', '3922 Carole Circles Suite 521', 'whuels@gmail.com', NULL);

-- INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
-- VALUE (24, 'Selviani Amalia Kartika', 'H071211003', 'P', '1-540-283-0322 x59227', '846 Hazel Avenue', 'norris.lockman@hotmail.com', NULL);

-- INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
-- VALUE (25, 'Muh. Fajar Siddiq Arafat', 'H071211078', 'L', '+1-470-544-6505', '10979 Goldner Stravenue Apt. 152', 'gtreutel@runte.com', NULL);

-- INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
-- VALUE (26, 'Djulizah Bonita Lanini', 'H071211073', 'P', '1-279-410-5926 x725', '53737 Barton Forks', 'garland01@hotmail.com', NULL);

-- INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
-- VALUE (27, 'Syarif Hidayat', 'H071211087', 'L', '202-381-6567 x5674', '4114 Barney Ways Apt. 156', 'naomi.rath@gmail.com', NULL);

-- INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, No_telp, Alamat, Email, Keterangan)
-- VALUE (28, 'Syifa Ur Rahmi', 'H071211066', 'P', '1-506-327-0838 x99252', '949 Osinski Fort Apt. 731', 'kstreich@schowalter.com', NULL);

-- Soal 4
-- SELECT * FROM buku;
-- INSERT INTO buku
-- VALUE ('001', 'The Blood Dagger', '1936', 'Dr. Darrick Kuhn');

-- INSERT INTO buku
-- VALUE ('002', 'One Temptation', '1922', 'Mylene Gusikowski');

-- INSERT INTO buku
-- VALUE ('003', 'The Silver Jury', '1956', 'Prof. Ryann Barton III');

-- INSERT INTO buku
-- VALUE ('004', 'Bionic Abyss', '1969', 'Louisa Johnston');

-- INSERT INTO buku
-- VALUE ('005', 'The Masked Stone', '1944', 'Jerrell Mayer');

-- SELECT * FROM pinjam;
-- INSERT INTO pinjam
-- VALUE ('006', '2023-02-04', '17', '001', '1');

-- INSERT INTO pinjam
-- VALUE ('007', '2023-01-28', '18', '002', '1');

-- INSERT INTO pinjam
-- VALUE ('008', '2023-03-07', '19', '003', '0');

-- INSERT INTO pinjam
-- VALUE ('009', '2023-01-15', '20', '004', '1');

-- INSERT INTO pinjam
-- VALUE ('010', '2023-11-19', '21', '005', '0');

-- Soal 5
SELECT * FROM mahasiswa;	
-- INSERT INTO mahasiswa
-- VALUE (98, '', 'H071211098', 'P', '(207) 846-7653', '812 Fay Roads Apt. 052', 'sunny.rath@hotmail.com', NULL);

-- INSERT INTO mahasiswa
-- VALUE (99, 'Data Baru', 'H071211099', 'L', '1-224-616-1963 x21337', '6847 Yost Roads', 'charlene.kreiger@hotmail.com', NULL);
