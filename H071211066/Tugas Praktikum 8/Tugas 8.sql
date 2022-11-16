# Nomor 1
# Tampilkan nama, nama program studi, dan nim/nip dari dosen dan mahasiswa Ilmu Komputer!
USE appseminar;
SELECT ss_dosen.nama, ss_prodi.nama, ss_dosen.nip AS "nim/nip" FROM ss_dosen
INNER JOIN ss_prodi
ON ss_dosen.id_prodi = ss_prodi.id_prodi
WHERE ss_prodi.nama = "Ilmu Komputer"
UNION
SELECT ss_mahasiswa.nama, ss_prodi.nama, ss_mahasiswa.nim FROM ss_mahasiswa
INNER JOIN ss_prodi
ON ss_mahasiswa.id_prodi = ss_prodi.id_prodi
WHERE ss_prodi.nama = "Ilmu Komputer";

# Nomor 2
# Tampilkan nama, prodi, dan riwayat status yang pernah dijalani (pembimbing 
# utama, pertama, penguji 1, penguji 2) dari setiap dosen, kemudian urutkan 
# berdasarkan nama DESC.

SELECT b.`Nama`, ss_prodi.nama AS "Prodi", GROUP_CONCAT(`tugas`) AS "Riwayat Status"
FROM 
	(SELECT DISTINCT ss_dosen.nama AS Nama, ss_dosen.id_prodi AS id, 
		(SELECT "Pembimbing Utama" WHERE ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_utama) AS tugas
 	FROM ss_dosen, ss_pembimbing
 	WHERE 
	 	(SELECT "Pembimbing Utama" WHERE ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_utama ) IS NOT NULL
	UNION ALL 
	SELECT DISTINCT ss_dosen.nama, ss_dosen.id_prodi, 
		(SELECT "Pembimbing Pertama" WHERE ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_pertama) AS tugas
 	FROM ss_dosen, ss_pembimbing
 	WHERE 
		(SELECT "Pembimbing Pertama" WHERE ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_pertama) IS NOT NULL
	UNION ALL 
	SELECT DISTINCT ss_dosen.nama, ss_dosen.id_prodi, 
		(SELECT "Penguji 1" WHERE ss_dosen.id_dosen = ss_penguji.id_penguji_1) AS tugas
 	FROM ss_dosen, ss_penguji
 	WHERE 
	 	(SELECT "Penguji 1" WHERE ss_dosen.id_dosen = ss_penguji.id_penguji_1) IS NOT NULL
	UNION ALL 
	SELECT DISTINCT ss_dosen.nama, ss_dosen.id_prodi, 
		(SELECT "Penguji 2" WHERE ss_dosen.id_dosen = ss_penguji.id_penguji_2) AS tugas
 	FROM ss_dosen, ss_penguji
 	WHERE 
	 	(SELECT "Penguji 2" WHERE ss_dosen.id_dosen = ss_penguji.id_penguji_2) IS NOT NULL) AS b
INNER JOIN ss_prodi
ON ss_prodi.id_prodi = `id`
GROUP BY b.`Nama`
ORDER BY b.`Nama` DESC;

# Nomor 3
# Buatlah query untuk menampilkan, kota apa yang paling banyak 
# karyawan atau pelanggan yang namanya diawali huruf L
# Note (kota karyawan berdasarkan kota tempat dia bekerja)
USE classicmodels;

SELECT `Kota` FROM 
	(SELECT employees.firstName AS "Nama Karyawan / Pelanggan", offices.city AS "Kota" FROM employees
	INNER JOIN offices
	ON employees.officeCode = offices.officeCode
	WHERE employees.firstName LIKE "L%"
	UNION ALL 
	SELECT customerName AS "Nama Pelanggan", city AS "Kota" FROM customers
	WHERE customerName LIKE "L%") AS a
GROUP BY `Kota`
ORDER BY COUNT(`Nama Karyawan / Pelanggan`) DESC LIMIT 1;