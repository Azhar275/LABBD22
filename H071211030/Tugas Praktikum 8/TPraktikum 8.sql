-- USE appseminar;

-- Soal 1
-- SELECT ss_dosen.nama, ss_dosen.nip AS "NIM/NIP" , ss_prodi.nama 
-- FROM ss_dosen
-- JOIN ss_prodi
-- ON ss_dosen.id_prodi = ss_prodi.id_prodi
-- WHERE ss_prodi.id_prodi = 'H07'
-- UNION
-- SELECT ss_mahasiswa.nama, ss_mahasiswa.nim, ss_prodi.nama 	
-- FROM ss_mahasiswa
-- JOIN ss_prodi
-- ON ss_mahasiswa.id_prodi = ss_prodi.id_prodi
-- WHERE ss_prodi.id_prodi = 'H07';

-- Soal 2
-- SELECT aa.nama, ss_prodi.nama AS prodi, GROUP_CONCAT(riwayatStatus) AS "Riwayat Status"
-- FROM
-- (SELECT ss_dosen.nama AS nama, CONCAT('Pembimbing Utama') AS 'riwayatStatus'
-- FROM ss_dosen
-- INNER JOIN ss_pembimbing
-- ON ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_utama
-- UNION
-- SELECT ss_dosen.nama AS nama, CONCAT('Pembimbing Pertama') AS 'riwayatStatus'
-- FROM ss_dosen
-- INNER JOIN ss_pembimbing
-- ON ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_pertama
-- UNION
-- SELECT ss_dosen.nama AS nama, CONCAT('Penguji 1') as 'riwayatStatus'
-- FROM ss_dosen
-- INNER JOIN ss_penguji
-- ON ss_dosen.id_dosen = ss_penguji.id_penguji_1
-- UNION
-- SELECT ss_dosen.nama AS nama, CONCAT('Penguji 2') AS 'riwayatStatus'
-- FROM ss_dosen
-- INNER JOIN ss_penguji
-- ON ss_dosen.id_dosen = ss_penguji.id_penguji_2) as aa
-- INNER JOIN ss_dosen
-- ON ss_dosen.nama = aa.nama
-- INNER JOIN ss_prodi
-- ON ss_dosen.id_prodi = ss_prodi.id_prodi
-- GROUP BY aa.nama
-- ORDER BY aa.nama DESC;

-- Soal 3
USE classicmodels;
SELECT COUNT(city) AS Kota, city
FROM 
(SELECT ofc.city, CONCAT(em.firstName, ' ', em.lastName) AS 'Nama'
 FROM employees em
 INNER JOIN offices ofc
 ON ofc.officeCode = em.officeCode
 HAVING nama like 'L%'
 UNION
 SELECT c.city, c.customerName AS 'Nama' 
 FROM customers c 
 WHERE c.customerName LIKE 'L%') AS q
 GROUP BY city
 ORDER BY COUNT(city) DESC LIMIT 1;