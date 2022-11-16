-- nomor 1
SELECT ss_mahasiswa.nama AS "Nama dosen & Mahasiswa",ss_mahasiswa.nim AS "NIM/NIP", ss_prodi.nama AS "Nama Prodi" FROM ss_mahasiswa
join ss_prodi
USING(id_Prodi)
WHERE ss_prodi.nama = "Ilmu Komputer"
UNION ALL 
SELECT ss_dosen.nama ,ss_dosen.nip, ss_prodi.nama FROM ss_dosen
join ss_prodi
USING(id_Prodi)
WHERE ss_prodi.nama = "Ilmu Komputer";

-- nomor 2 
SELECT GROUP_CONCAT(`Riwayat`) AS 'Riwayat Status',nama,`Nama Prodi`
FROM
(
SELECT "Penguji 1" AS Riwayat, Dosen.nama, Prodi.nama AS "Nama Prodi"
FROM  ss_dosen AS Dosen
JOIN ss_prodi AS Prodi
USING (id_Prodi)
JOIN ss_penguji AS Penguji
ON Dosen.id_dosen = Penguji.id_penguji_1
GROUP BY  Dosen.nama

UNION ALL

SELECT "Penguji 2" AS Riwayat, Dosen.nama, Prodi.nama AS "Nama Prodi"
FROM  ss_dosen AS Dosen
JOIN ss_prodi AS Prodi
USING (id_Prodi)
JOIN ss_penguji AS Penguji
ON Dosen.id_dosen = Penguji.id_penguji_2 
GROUP BY  Dosen.nama

UNION ALL

SELECT "Pembimbing Utama" AS Riwayat, Dosen.nama, Prodi.nama AS "Nama Prodi"
FROM  ss_dosen AS Dosen
JOIN ss_prodi AS Prodi
USING (id_Prodi)
JOIN ss_pembimbing AS Pembimbing
ON Dosen.id_dosen = Pembimbing.id_pembimbing_utama
GROUP BY  Dosen.nama

UNION  ALL

SELECT "Pembimbing Pertama" AS Riwayat, Dosen.nama, Prodi.nama AS "Nama Prodi"
FROM  ss_dosen AS Dosen
JOIN ss_prodi AS Prodi
USING (id_Prodi)
JOIN ss_pembimbing AS Pembimbing
ON Dosen.id_dosen = Pembimbing.id_pembimbing_pertama
GROUP BY  Dosen.nama
 ) AS XXX GROUP BY nama ORDER BY nama desc;
 
 
-- Nomor 3
SELECT Kota , COUNT(kota) AS Kota_L_Terbanyak From (
(Select offices.city AS Kota 
FROM Employees
JOIN offices
using (officecode)
where employees.firstName Like "L%")
UNION All
(Select customers.city AS Kota
FROM customers
where customers.customerName Like "L%"))a GROUP BY (kota) ORDER BY count(kota)DESC LIMIT 1;



