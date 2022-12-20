-- 3
use appseminar;
SELECT ss_pembimbing.id_pembimbing_utama, ss_dosen.id_dosen, ss_mahasiswa.nama, ss_dosen.nama
FROM ss_pembimbing
INNER JOIN ss_dosen
ON ss_pembimbing.id_pembimbing_utama = ss_dosen.id_dosen
INNER JOIN ss_mahasiswa
ON ss_pembimbing.id_mahasiswa = ss_mahasiswa.id_mahasiswa
WHERE ss_mahasiswa.nama = 'Sulaeman'

