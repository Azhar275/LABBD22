-- Soal 1
create table offices (
officeCode varchar(10) not null,
city varchar(50) not null,
phone varchar(50) not null,
addressline1 varchar(50) not null,
addressline2 varchar(50),
state varchar(50),
country varchar(50) not null,
primary key(officeCode)
);
-- Soal 2
desc office;
-- Soal 3
alter table offices
modify column phone int(20),
-- Soal 4
drop column addressline2;
desc offices;