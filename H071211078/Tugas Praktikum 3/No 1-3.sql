#No 1
-- USE classicmodels;
-- INSERT INTO employees VALUES 
-- (2000,'Siddiq','Fajar','x6000','fsdq02@gmail.com','5',2000,'Sales Rep'),
-- (2001,'Smith','Adam','x6001','asmith@gmail.com','6',2001,'Sales Rep'),
-- (2002,'Bond','Jonathan','x6002','jbond@gmail.com','7',2002,'Sales Rep');
-- SELECT * FROM employees;

#No 2
-- SELECT * FROM offices;
-- INSERT INTO offices VALUES
-- ('8','Rome','+39 06 8387 0923','Pasta Street',NULL,NULL,'Italy','00198','EMEA');
-- UPDATE employees
-- SET officeCode='8'
-- WHERE officeCode='4' AND jobTitle='Sales Rep';
-- SELECT * FROM employees WHERE officeCode='8' AND jobTitle='Sales Rep';

#No 3
-- USE db_praktikum;
-- ALTER TABLE mahasiswa
-- ADD COLUMN No_telp VARCHAR(20) NOT NULL,
-- ADD COLUMN Alamat VARCHAR(100),
-- ADD COLUMN Email VARCHAR(50) NOT NULL,
-- ADD COLUMN Keterangan VARCHAR(20);

-- INSERT INTO mahasiswa (nama,nim,jk,id_mahasiswa,No_telp,Alamat,Email,Keterangan) VALUES 
-- ('MUH. FAJAR SIDDIQ ARAFAT','H071211078','L',078,'081212908765','Jl Sudiang entah dimana','fsdq02@gmail.com','Semester 3'),
-- ('AGUNG KARTIKA ARDHIYANDA','H071211064','L',064,'081253216589','Jl Hartaco entah dimana','ardhi064@gmail.com','Semester 3'),
-- ('MUHAMMAD DZACKY ILHAM','H071211071','L',071,'083189762134','Entah dimana','jeki071@gmail.com','Semester 3'),
-- ('MUH KHALILUR RAHMAN','H071211082','L',082,'081253782108','Idk','lilur082@gmail.com','Semeter 3'),
-- ('MUHAMMAD IKRAM HIDAYAT','H071211030','L',030,'082193217840','Idk','wargadc@gmail.com','Semester 3'),
-- ('MUHAMMAD RIFKY AQID','H071211077','L',077,'083183230823','Idk','drinkiqq@gmail.com','Semester 3'),
-- ('ADELIA PUSPITA HILAL','H071211044','P',044,'085129184020','Idk','adelita@gmail.com','Semester 3'),
-- ('FADILAH ISTIQAMAH','H071211023','P',023,'081285393939','Idk','fadel@gmail.com','Semester 3'),
-- ('SELVIANI AMALIA KARTIKA','H071211003','P',003,'081231832','Idk','selvikart@gmail.com','Semester 3'),
-- ('DJULIZAH BONITA LANINI','H071211073','P',073,'081564890','Idk','locopawns@gmail.com','Semester 3'),
-- ('SYARIF HIDAYAT','H071211087','P',087,'083124318482','Idk','syarifayat@gmail.com','Semester 3'),
-- ('SYIFA UR RAHMI','H0712110766','P',066,'081321482920','Idk','syifurrahmi@gmail.com','Semester 3');