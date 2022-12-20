-- use appseminar;

#1.
-- select ss_mahasiswa.nama, ss_mahasiswa.nim, ss_prodi.nama as Prodi, "Mahasiswa" as Type 
-- from ss_mahasiswa
-- inner join ss_prodi
-- on ss_mahasiswa.id_prodi = ss_prodi.id_prodi
-- where ss_prodi.nama = 'Ilmu Komputer'
-- union
-- select ss_dosen.nama, ss_dosen.nip, ss_prodi.nama, "Dosen"
-- from ss_dosen
-- inner join ss_prodi
-- on ss_dosen.id_prodi = ss_prodi.id_prodi
-- WHERE  ss_prodi.nama = 'Ilmu Komputer';



#2.
select aa.nama, ss_prodi.nama as prodi, group_concat(riwayatStatus)
from 
(select ss_dosen.nama as nama, concat('Pembimbing Utama') as 'riwayatStatus'
from ss_dosen
inner join ss_pembimbing
on ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_utama
union
select ss_dosen.nama as nama, concat('Pembimbing Pertama') as 'riwayatStatus'
from ss_dosen
inner join ss_pembimbing
on ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_pertama
union
select ss_dosen.nama as nama, concat('Penguji 1') as 'riwayatStatus'
from ss_dosen
inner join ss_penguji
on ss_dosen.id_dosen = ss_penguji.id_penguji_1
union
select ss_dosen.nama as nama, concat('Penguji 2') as 'riwayatStatus'
from ss_dosen
inner join ss_penguji
on ss_dosen.id_dosen = ss_penguji.id_penguji_2) as aa
inner join ss_dosen
on ss_dosen.nama = aa.nama
inner join ss_prodi
on ss_dosen.id_prodi = ss_prodi.id_prodi
group by aa.nama order by aa.nama;

#3.
-- use classicmodels;

SELECT COUNT(city), city FROM (
SELECT ofc.city, CONCAT(em.firstName, '', em.lastName) AS 'Nama'
FROM employees em
INNER JOIN offices ofc
ON ofc.officeCode = em.officeCode
HAVING left(Nama,1) = 'L'
UNION
SELECT c.city, c.customerName AS 'Nama' FROM customers c WHERE LEFT(c.customerName, 1) = 'L') as m
GROUP BY city
ORDER BY COUNT(city) DESC LIMIT 1;
