-- NOMOR 1 --
SELECT ss_mahasiswa.nama AS "NAMA", ss_prodi.nama AS "NAMA PRODI", ss_mahasiswa.nim AS "NIM/NIP"
FROM ss_mahasiswa
INNER JOIN ss_prodi
ON ss_mahasiswa.id_prodi = ss_prodi.id_prodi
WHERE ss_prodi.nama = "Ilmu Komputer"
UNION 
SELECT ss_dosen.nama, ss_prodi.nama AS "Nama Prodi", ss_dosen.nip
FROM ss_dosen
INNER JOIN ss_prodi
ON ss_dosen.id_prodi = ss_prodi.id_prodi
WHERE ss_prodi.nama = "Ilmu Komputer"

-- Nomor 2 --
SELECT nama, `Nama Prodi`, GROUP_CONCAT(Roles) AS "Riwayat Status" FROM 
(SELECT ss_dosen.nama, ss_prodi.nama AS "Nama Prodi", "Penguji 1" AS Roles
FROM ss_dosen
INNER JOIN ss_penguji
ON ss_dosen.id_dosen = ss_penguji.id_penguji_1
LEFT JOIN ss_prodi
ON ss_dosen.id_prodi = ss_prodi.id_prodi
UNION
SELECT ss_dosen.nama, ss_prodi.nama AS "Nama Prodi", "Penguji 2" AS Roles
FROM ss_dosen
INNER JOIN ss_penguji
ON ss_dosen.id_dosen = ss_penguji.id_penguji_2
LEFT JOIN ss_prodi
ON ss_dosen.id_prodi = ss_prodi.id_prodi
UNION
SELECT ss_dosen.nama, ss_prodi.nama AS "Nama Prodi", "Pembimbing Utama" AS Roles
FROM ss_dosen
INNER JOIN ss_pembimbing
ON ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_utama
LEFT JOIN ss_prodi
ON ss_dosen.id_prodi = ss_prodi.id_prodi
UNION
SELECT ss_dosen.nama, ss_prodi.nama AS "Nama Prodi", "Pembimbing Pertama" AS Roles
FROM ss_dosen
INNER JOIN ss_pembimbing
ON ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_pertama
LEFT JOIN ss_prodi
ON ss_dosen.id_prodi = ss_prodi.id_prodi) AS PEMBIMBING GROUP BY nama ORDER BY nama DESC


-- Nomor 3 --
SELECT Kota FROM 
(SELECT customers.city AS "Kota", customers.customerName AS "Nama Pelanggan"
FROM customers
WHERE customerName LIKE "L%"
UNION ALL 
SELECT offices.city, employees.firstName
FROM employees
INNER JOIN offices
ON employees.officeCode = offices.officeCode
WHERE firstName LIKE "L%") AS tabel GROUP BY Kota ORDER BY COUNT(Kota) DESC 
LIMIT 1;
