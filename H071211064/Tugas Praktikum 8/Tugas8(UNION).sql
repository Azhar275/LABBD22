-- 1 menampilkan nama , program studi, dan nim/nip dari dosen dan mahasiswa ilmu komputer

/*
SELECT ss_dosen.nama, ss_dosen.nip AS "NIM/NIP",
ss_prodi.nama
FROM ss_dosen
INNER JOIN ss_prodi ON ss_dosen.id_prodi = ss_prodi.id_prodi
WHERE ss_prodi.id_prodi = 'H07'
UNION 
SELECT ss_mahasiswa.nama, ss_mahasiswa.nim, ss_prodi.nama
FROM ss_mahasiswa
INNER JOIN ss_prodi ON ss_mahasiswa.id_prodi = ss_prodi.id_prodi
WHERE ss_prodi.id_prodi = 'H07';
*/


-- 3  buatlah query untuk menampilkan, kota apa yang paling banyak karyawan atau pelanggan yang namanya diawali huruf L

/*
use classicmodels;
SELECT COUNT(city), city, Nama
FROM 
(SELECT ofc.city, CONCAT(em.firstName, ' ', em.lastName) AS 'Nama'
 FROM employees em
 INNER JOIN offices ofc
 ON ofc.officeCode = em.officeCode
 HAVING Nama like 'L%'
 UNION
 SELECT c.city, c.customerName AS 'Nama' 
 FROM customers c 
 WHERE c.customerName like 'L%') AS m
 GROUP BY city
 ORDER BY COUNT(city) DESC
 LIMIT 1;
 */
 
 -- 2 Tampilkan nama, prodi, dan riwayat status yang pernah dijalani (pembimbing utama, pertama, penguji 1, penguji 2) dari setiap dosen, kemudian urutkan berdasarkan nama DESC
 
 /*
 USE appseminar;
SELECT aa.nama, ss_prodi.nama AS prodi, GROUP_CONCAT(riwayatStatus) AS "Riwayat Status"
FROM
(SELECT ss_dosen.nama AS nama, CONCAT('Pembimbing Utama') AS 'riwayatStatus'
FROM ss_dosen
INNER JOIN ss_pembimbing
ON ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_utama
UNION
SELECT ss_dosen.nama AS nama, CONCAT('Pembimbing Pertama') AS 'riwayatStatus'
FROM ss_dosen
INNER JOIN ss_pembimbing
ON ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_pertama
UNION
SELECT ss_dosen.nama AS nama, CONCAT('Penguji 1') as 'riwayatStatus'
FROM ss_dosen
INNER JOIN ss_penguji
ON ss_dosen.id_dosen = ss_penguji.id_penguji_1
UNION
SELECT ss_dosen.nama AS nama, CONCAT('Penguji 2') AS 'riwayatStatus'
FROM ss_dosen
INNER JOIN ss_penguji
ON ss_dosen.id_dosen = ss_penguji.id_penguji_2) as aa
INNER JOIN ss_dosen
ON ss_dosen.nama = aa.nama
LEFT JOIN ss_prodi
ON ss_dosen.id_prodi = ss_prodi.id_prodi
GROUP BY aa.nama
ORDER BY aa.nama DESC;
*/
