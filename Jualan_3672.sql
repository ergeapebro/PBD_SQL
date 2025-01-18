create database Jualan_3672
use Jualan_3672

create table Wilayah_3672(
kode char (5) primary key not null,
keterangan varchar (10) not null)

create table Customer_3672(
kode char(10) primary key not null,
nama varchar(30) not null,
alamat varchar(20),
wilayah_id char(5) foreign key references Wilayah_3672(kode))

create table Barang_3672(
kode char (10) primary key not null,
nama varchar (30) not null,
stok int not null,
harga_jual int not null)

insert into Wilayah_3672 values ('JOG','Jogja')
insert into Wilayah_3672 values ('JKT','Jogja')
insert into Wilayah_3672 values ('KLT','Jogja')
insert into Wilayah_3672 values ('SBY','Jogja')
insert into Wilayah_3672 values ('SLO','Jogja')
insert into Wilayah_3672 values ('SLTG','Salatiga')
insert into Wilayah_3672 values ('SMG','Semarang')
insert into Wilayah_3672 values ('SRGN','Sragen')
insert into Wilayah_3672 values ('WNG','Wonogiri')

insert into Customer_3672 values ('0000000010','Penarikan Konsi','','JOG')
insert into Customer_3672 values ('0000000011','Jogja Komputer','Condong Catur','JOG')
insert into Customer_3672 values ('0000000012','Ramon Komputer','','SLO')
insert into Customer_3672 values ('0000000013','Angkasa Comp','','SBY')
insert into Customer_3672 values ('0000000014','MX Komputer','Jl.Wates','JOG')
insert into Customer_3672 values ('0000000015','Internasional Computer','Ringroad Utara','JOG')
insert into Customer_3672 values ('0000000016','MJY','','SMG')
insert into Customer_3672 values ('0000000017','MAX-C','','SLO')
insert into Customer_3672 values ('0000000018','Soft Info Komputer','','SLO')
insert into Customer_3672 values ('0000000019','Javara Computa','','JKT')
insert into Customer_3672 values ('0000000020','Delta Computer','','KLT')
insert into Customer_3672 values ('0000000021','Dji Toe Computer','','SRGN')

insert into Barang_3672 values ('2022030001','Mb 478 DDR2 PCI-E Amptron','120000','180000')
insert into Barang_3672 values ('2022030002','Cooler 478 Cool Master','45000','2900000')
insert into Barang_3672 values ('2022030003','Kabel HDD ATA 133','300','10000')
insert into Barang_3672 values ('2022030004','Keyboard ps2 Seasonic','25','3000')
insert into Barang_3672 values ('2022030005','Mouse ps3 Seasonic','15','50000')
insert into Barang_3672 values ('2022030006','Meja GM kaki 3','40','65000')
insert into Barang_3672 values ('2022030007','PSU 450 Watt Epro','5','80000')
insert into Barang_3672 values ('2022030008','Fan Casing Hitam 8inch Standar','0','50000')
insert into Barang_3672 values ('2022030009','SSD 500 Gb SATA Seagate','100','750000')
insert into Barang_3672 values ('2022030010','Mb 478 DDR3 Amptron PCI-E','14','250000')

select * from Customer_3672

select nama, alamat from Customer_3672

select nama, alamat from Customer_3672 where nama = 'Javara Computa'

select nama, alamat from Customer_3672 where nama like '%D%'

select Customer_3672.nama, Customer_3672.alamat, Wilayah_3672.keterangan as Wilayah
from Customer_3672 left join Wilayah_3672
on Customer_3672.wilayah_id=Wilayah_3672.kode

select Customer_3672.nama, Customer_3672.alamat, Wilayah_3672.keterangan as wilayah
from Customer_3672 Left join Wilayah_3672
on Customer_3672.wilayah_id=Wilayah_3672.kode
where keterangan ='Semarang'

select * from Barang_3672 where harga_jual between 50000 and 100000 order by harga_jual

