# 1. (appseminar) Tampilkan nama, nama program studi
# nim/nip dari dosen dan mahasiswa Ilmu Komputer!
SELECT d.nip AS 'Nomor Induk', d.nama, p.nama AS 'Program Studi' 
FROM ss_dosen d
JOIN ss_prodi p
ON d.id_prodi = p.id_prodi
WHERE p.id_prodi = 'H07'
UNION 
SELECT m.nim AS 'Nomor Induk', m.nama, p.nama AS 'Program Studi' 
FROM ss_mahasiswa m
JOIN ss_prodi p
ON m.id_prodi = p.id_prodi 
WHERE p.id_prodi = 'H07'


# 2. (database appseminar) Tampilkan nama, prodi, dan riwayat status yang
# pernah dijalani (pembimbing utama, pertama, penguji 1, penguji 2) dari setiap dosen, 
# kemudian urutkan berdasarkan nama DESC.

SELECT `dosen`, `prodi`, GROUP_CONCAT(`Riwayat Status`) AS 'Riwayat Status'
FROM (
		SELECT DISTINCT ss_dosen.nama AS 'dosen', ss_prodi.nama AS 'prodi', 
				(SELECT 'Penguji Satu' WHERE ss_penguji.id_penguji_1 = ss_dosen.id_dosen) AS 'Riwayat Status'				
		FROM ss_dosen INNER JOIN ss_prodi ON ss_dosen.id_prodi = ss_prodi.id_prodi, ss_penguji
		WHERE (SELECT 'Penguji Satu'
					WHERE ss_penguji.id_penguji_1 = ss_dosen.id_dosen) IS NOT NULL
		UNION
		SELECT DISTINCT ss_dosen.nama AS 'dosen', ss_prodi.nama AS 'prodi', 
				(SELECT 'Penguji Dua' WHERE ss_penguji.id_penguji_2 = ss_dosen.id_dosen) AS 'Riwayat Status'				
		FROM ss_dosen INNER JOIN ss_prodi ON ss_dosen.id_prodi = ss_prodi.id_prodi, ss_penguji
		WHERE (SELECT 'Penguji Satu'
					WHERE ss_penguji.id_penguji_2 = ss_dosen.id_dosen) IS NOT NULL
		UNION		
		SELECT DISTINCT ss_dosen.nama AS 'dosen', ss_prodi.nama AS 'prodi', 
				(SELECT 'Pembimbing Utama' WHERE ss_pembimbing.id_pembimbing_utama = ss_dosen.id_dosen) AS 'Riwayat Status'				
		FROM ss_dosen INNER JOIN ss_prodi ON ss_dosen.id_prodi = ss_prodi.id_prodi, ss_pembimbing
		WHERE (SELECT 'Pembimbing Utama'
					WHERE ss_pembimbing.id_pembimbing_utama = ss_dosen.id_dosen) IS NOT NULL
		UNION
		SELECT DISTINCT ss_dosen.nama AS 'dosen', ss_prodi.nama AS 'prodi', 
				(SELECT 'Pembimbing Pertama' WHERE ss_pembimbing.id_pembimbing_pertama = ss_dosen.id_dosen) AS 'Riwayat Status'				
		FROM ss_dosen INNER JOIN ss_prodi ON ss_dosen.id_prodi = ss_prodi.id_prodi, ss_pembimbing
		WHERE (SELECT 'Pembimbing Pertama'
					WHERE ss_pembimbing.id_pembimbing_pertama = ss_dosen.id_dosen) IS NOT NULL
		) AS q
GROUP BY `dosen`
ORDER BY `dosen` DESC

# 3. (classicmodels) buatlah query untuk menampilkan, 
# kota apa yang paling banyak karyawan/pelanggan yang namanya diawali huruf L.
# note (kota karyawan berdasarkan kota tempat dia bekerja)
		
-- SELECT employees.firstName as 'Name', offices.city AS 'City'
-- FROM employees 
-- JOIN offices 
-- ON employees.officeCode = offices.officeCode
-- WHERE employees.firstName LIKE 'L%'
-- UNION ALL 
-- SELECT customerName, city
-- 		FROM customers
-- 		WHERE customerName LIKE 'L%'
		
-- select count city as the condition to show the most 

SELECT `City`
FROM (SELECT employees.firstName as 'Name', offices.city AS 'City'
		FROM employees 
		JOIN offices 
		ON employees.officeCode = offices.officeCode
		WHERE employees.firstName LIKE 'L%'
		UNION ALL 
		SELECT customerName, city
		FROM customers
		WHERE customerName LIKE 'L%') AS q
GROUP BY `City`
ORDER BY COUNT(`Name`) DESC 
LIMIT 1