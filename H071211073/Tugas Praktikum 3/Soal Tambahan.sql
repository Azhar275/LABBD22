-- TABEL MAHASISWA TAMBAHKAN:
-- No_telp varchar(20) not null
-- Alamat varchar(100)
-- Email varchar (50) not null
-- Keterangan(20) varchar

-- ALTER TABLE mahasiswa
-- ADD no_telp VARCHAR(20) NOT NULL
-- ADD alamat VARCHAR(100)
-- ADD email VARCHAR(50) NOT NULL
-- ADD keterangan VARCHAR(20) 
-- 
-- DESC mahasiswa

-- SOAL 3
INSERT INTO mahasiswa VALUE (1, 'Djulizah B.', 'H071211073', 'p', '+4204206969', 'jl.merkurius', 'djul@mail.com', 'semester 3'), 
									(2, 'Agung K.', 'H071211064', 'l', '+71211064', 'jl.venus', 'ardhi@mail.com', 'semester 3'),
									(3, 'M. Dzacky', 'H071211071', 'l', '+71211071', 'jl.bumi', 'dzakcy@mail.com', 'semester 3'),
									(4, 'M. Khalilur', 'H071211082', 'l', '+71211082', 'jl.mars', 'khalil@mail.com', 'semester 3'),
									(5, 'M. Ikram', 'H071211030', 'l', '+71211030', 'jl.jupiter', 'ikram@mail.com', 'semester 3'),
									(6, 'M. Rifky', 'H071211077', 'l', '+71211077', 'jl.saturnus', 'aqid@mail.com', 'semester 3'),
									(7, 'Adelia P.', 'H071211044', 'p', '+71211044', 'jl.neptunus', 'adel@mail.com', 'semester 3'),
									(8, 'Fadilah I.', 'H071211023', 'p', '+71211023', 'jl.pluto', 'fadilah@mail.com', 'semester 3'),
									(9, 'Selviani A.', 'H071211003', 'p', '+71211003', 'jl.centaur', 'selvi@mail.com', 'semester 3'),
									(10, 'M. Fajar', 'H071211078', 'l', '+71211078', 'jl.sagitta', 'fajar@mail.com', 'semester 3'),
									(11, 'Syarif H.', 'H071211087', 'l', '+71211087', 'jl.boreas', 'syarif@mail.com', 'semester 3'),
									(12, 'Syifa R.', 'H071211066', 'l', '+71211066', 'jl.altair', 'rahmi@mail.com', 'semester 3');
-- ada kesalahan, syifa bukan laki-laki T_T
UPDATE mahasiswa
SET jk='p'
WHERE id_mahasiswa=12;

-- SOAL 4 
INSERT INTO buku VALUE (1, 'No Longer Human', 1948, 'Osamu Dazai'),
								(2, 'The Ghost', 1925, 'Edogawa Ranpo'),
								(3,'The Black Cat', 1843, 'Edgar Allan Poe'),
								(4, 'The Tempest', 1611, 'William Shakespear'),
								(5, 'Don Quixote', 1605, 'Miguel de Cervantes');

INSERT INTO pinjam VALUE (1, '2022-07-03 13:09:54', 4, 2, 0),
									(2, '2022-08-07 17:11:00', 1, 1, 1),
									(3, '2022-07-03 13:09:54', 5, 2, 0),
									(4, '2022-07-03 13:09:54', 12, 2, 1),
									(5, '2022-07-03 13:09:54', 9, 2, 0);

-- SOAL 5
INSERT INTO mahasiswa VALUE (13, 'Cyno', 'H0712110XX', 'l', '', 'jl.lupus aureus', 'generalmahamatraTCG@mail.com', 'semester 8'),
									(14, 'Razor', 'H0712110xy', 'l', '', 'jl.lupus minor', 'wolfboy@mail.com', NULL);
									
UPDATE mahasiswa
SET keterangan=NULL
WHERE id_mahasiswa=14;

UPDATE mahasiswa 
SET no_telp='712110xy'
WHERE id_mahasiswa=14;

SELECT * FROM mahasiswa
SELECT * FROM pinjam
SELECT * FROM buku 