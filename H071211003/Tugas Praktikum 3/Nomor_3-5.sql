USE db_praktikum

ALTER TABLE mahasiswa MODIFY COLUMN No_telp VARCHAR (20) NOT NULL;
ALTER TABLE mahasiswa MODIFY alamat VARCHAR (100);
ALTER TABLE mahasiswa MODIFY email VARCHAR (50) NOT NULL;
ALTER TABLE mahasiswa MODIFY keterangan VARCHAR (20);

-- Nomor 3
INSERT INTO mahasiswa (nama, nim, jk, no_telp, email, alamat, keterangan)
VALUE ("Selviani Amalia Kartika", "H071211003", "P", '088705900412', "selviaml2020@gmail.com", "JL.In aja dulu", "Semester 3"),
("Agung Kartika Ardhiyanda", "H071211064", "L", '081233021569', "ardhiyanda@gmail.com", "Jl.Kebangkitan", "Semester 3"),
("Muhammad Dzacky Ilham", "H071211071", "L", '081233024455', "zackyilham@gmail.com", "Jl.Kelinci", "Semester 3"),
("Muh. Khalilur Rachman G.", "H071211082", "L", '081233781209', "khalilmuh@gmail.com", "Jl.Beruang", "Semester 3"),
("Muhammad Ikram Hidayat", "H071211030", "L", '081299021209', "ikrammm123@gmail.com", "Jl.Apaya no.10", "Semester 3"),
("Muhammad Rifky Aqid", "H071211077", "L", '081232021207', "drinkqid@gmail.com", "Jl.Sahabat", "Semester 3"),
("Adelia Puspita Hilal", "H071211044", "P", '085233021209', "adeliapuspita@gmail.com", "Jl.Antang Raya", "Semester 3"),
("Fadilah Istiqamah", "H071211023", "P", '088733021208', "dilaimut@gmail.com", "Jl.Sejati", "Semester 3"),
("Muh. Fajar Siddiq Arafat", "H071211078", "L", '088233021209', "fajarsiddiq@gmail.com", "Jl.Baji Gau", "Semester 3"),
("Djulizah Bonita Lanini", "H071211073", "P", '081333021200', "dejulizah@gmail.com", "Jl.Apa aja", "Semester 3"),
("Syarif Hidayat", "H071211087", "L", '082333021205', "syarifhidayat@gmail.com", "Jl.Setapak", "Semester 3"),
("Syifa Ur Rahmi", "H071211066", "P", '082333021209', "syifa123@gmail.com", "Jl.Kutaktau", "Semester 3");

-- Nomor 4
INSERT INTO buku (judul, tahun_terbit, pengarang)
VALUE ("Harry Potter", 2001, "J.K. Rowling"),
("Mariposa", 2020,"Luluk HF"),
("Train To Busan", 2016, "Park Jo Suk"),
("Under Water", 2016, "Marisa Reichardt"),
("Avatar", 2021, "Michael Dante");

INSERT INTO pinjam (tgl_pinjam, id_mahasiswa, id_buku, status_pengembalian, id_pinjam)
VALUE ("2022-06-20 08:22:34", 1011, 1, 1, 1),
("2022-06-21 09:22:44", 1012, 2, 0, 2),
("2022-06-22 10:22:56", 1013, 3, 1, 3),
("2022-06-23 16:22:12", 1014, 4, 0, 4),
("2022-06-24 07:22:00", 1015, 5, 1, 5);

-- Nomor 5
INSERT INTO mahasiswa (nim, jk, id_mahasiswa, No_telp, email, alamat, keterangan)
VALUE ("H071211227", "P", 1023, "081212126776", "lalalili@gmail.com", "jalan kebangkitan", "Semester 5");

INSERT INTO mahasiswa (nama, jk, id_mahasiswa, No_telp, email, alamat, keterangan)
VALUE ("Salsabila", "P", 1024, "081212126776", "lalalili@gmail.com", "jalan kebangkitan", "Semester 5");
