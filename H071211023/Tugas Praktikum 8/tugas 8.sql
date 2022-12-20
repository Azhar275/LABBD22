# nomor 1
SELECT ss_mahasiswa.nama AS `Nama Mahasiswa/Dosen`, ss_prodi.nama AS `program studi`, ss_mahasiswa.nim AS `NIM/NIP`, 
'Mahasiswa' AS Status 
FROM ss_mahasiswa
JOIN ss_prodi
USING (id_prodi)
WHERE ss_mahasiswa.id_prodi = "H07"
UNION
SELECT ss_dosen.nama, ss_prodi.nama AS `program studi`, ss_dosen.nip, 'Dosen'
FROM ss_dosen
JOIN ss_prodi
USING (id_prodi)
WHERE ss_dosen.id_prodi = "H07";


# nomor 2
SELECT `Nama Dosen`, `Nama Prodi`, GROUP_CONCAT(" ",tes) AS `Riwayat Status` FROM 
(SELECT ss_dosen.nama AS `Nama Dosen`, ss_prodi.nama AS `Nama Prodi`,
	(SELECT 'pembimbing utama' WHERE ss_pembimbing.id_pembimbing_utama = ss_dosen.id_dosen) AS tes
FROM ss_dosen LEFT JOIN ss_prodi USING (id_prodi), ss_pembimbing
UNION 
SELECT ss_dosen.nama AS `Nama Dosen`, ss_prodi.nama AS `Nama Prodi`,
	(SELECT 'pembimbing pertama' WHERE ss_pembimbing.id_pembimbing_pertama = ss_dosen.id_dosen) AS tes
FROM ss_dosen LEFT JOIN ss_prodi USING (id_prodi), ss_pembimbing
UNION 
SELECT ss_dosen.nama AS `Nama Dosen`, ss_prodi.nama AS `Nama Prodi`,
	(SELECT 'penguji 1' WHERE ss_penguji.id_penguji_1 = ss_dosen.id_dosen) AS tes
FROM ss_dosen LEFT JOIN ss_prodi USING (id_prodi), ss_penguji                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
UNION 
SELECT ss_dosen.nama AS `Nama Dosen`, ss_prodi.nama AS `Nama Prodi`,
	(SELECT 'penguji 2' WHERE ss_penguji.id_penguji_2 = ss_dosen.id_dosen) AS tes
FROM ss_dosen LEFT JOIN ss_prodi USING (id_prodi), ss_penguji
) riwayat 
GROUP BY `Nama Dosen`
HAVING `Riwayat Status` IS NOT NULL 
ORDER BY `Nama Dosen` DESC;


# nomor 3
SELECT city
FROM
	(SELECT customername, city FROM customers 
	WHERE customername LIKE "L%"
	UNION
	SELECT CONCAT(employees.firstName, " ", employees.lastName), offices.city
	FROM employees
	JOIN offices
	USING (officeCode)
	WHERE employees.firstName LIKE "L%") AS countable
GROUP BY cityappseminar
ORDER BY COUNT(customername) DESC
LIMIT 1;

