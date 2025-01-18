-- BUAT DATABASE PEMINJAMAN 
 create	database Peminjaman;

 use Peminjaman;

-- CREATE TABEL

-- TABEL ANGGOTA 
create	table anggota(
	id_anggota int not null,
	no_induk varchar(50),
	nama varchar(100),	
	gender char(1) check(gender='L' or gender='P'),
	no_telepon varchar(12),
	alamat varchar(50) null,
	primary key(id_anggota)
);
		

-- TABEL KATEGORI
create table kategori(
	id_kategori int not null,
	nama_kategori varchar(100),
	no_rak int,
	primary key(id_kategori)
);

-- TABEL PENERBIT 
create table penerbit(
	id_penerbit int not null,
	nama_penerbit varchar(100),
	no_telepon varchar(12),
	alamat varchar(50),
	primary key(id_penerbit)
);

-- TABEL BUKU 
 create table buku(
	id_buku int not null,
	id_penerbit int not null,
	id_kategori int not null,
	judul varchar(100),
	pengarang varchar(100),
	tahun_terbit int,
	primary key(id_buku),
	foreign key(id_penerbit) references penerbit(id_penerbit),
	foreign key(id_kategori) references kategori(id_kategori)
);

-- TABEL PENJAKA_PERPUSTAKAAN 
create table penjaga_perpustakaan(
	id_penjaga integer not null,
	nama_penjaga varchar(100),
	no_telepon varchar (12),
	primary key(id_penjaga)
);

-- TABEL PEMINJAMAN 
 create	table peminjaman(
	id_peminjaman integer not null,
	id_anggota integer not null,
	id_penjaga integer not null,
	tanggal_peminjaman datetime,
	tanggal_pengembalian datetime,
	status varchar(20) not null default 'Dipinjam',
	primary key(id_peminjaman),
	foreign key(id_anggota) references anggota(id_anggota),
	foreign key(id_penjaga) references penjaga_perpustakaan(id_penjaga)
);

-- TABEL PEMINJAMAN DETAIL 
create	table peminjaman_detail(
	id_peminjaman_detail int not null,
	id_peminjaman int not null,
	id_buku int not null,
	primary key(id_peminjaman_detail),
	foreign key(id_peminjaman) references peminjaman(id_peminjaman),
	foreign key(id_buku) references buku(id_buku)
);

-- Create Data Anggota 
INSERT INTO anggota 
	(id_anggota,no_induk,nama,gender,no_telepon,alamat) 
values 
	('11223341','1008390000','Ahmad Sukur','L','089678495999','Jakarta'), 
	('11223342','1008390001','Junaidi','L','089678495998','Bandung'), 
	('11223343','1008390002','Angela Sutarno','P','089678495955','Surabaya'), 
	('11223344','1008390003','Budi Gunawan','L','089678495992','Jakarta'), 
	('11223345','1008390004','Bambang Suyatno','L','089678495935','Bandung'), 
	('11223346','1008390005','Suryati','P','089678495886','Surabaya'), 
	('11223347','1008390006','Suhaini','P','089678495102','Jakarta'),
	('11223348','1008390006','Ronaldo Junior','L','081234567891','Jogja'),
	('11223349','1008390007','Abimanyu Yuk','L','087712345678','Solo'),
	('11223350','1008390008','Maudy Bawakemana','P','089912345678','Bogor'),
	('11223351','1008390009','Irianto Surface','L','087812345678','Jogja'),
	('11223352','1008390010','Annisa Devi','P','085812345678','Jogja');
	
-- Create Data Kategori
INSERT INTO kategori 
	(id_kategori,nama_kategori,no_rak) 
values 
	('100011','Sejarah','001'), 
	('100021','Teknologi Informasi','002'), 
	('100031','Fiksi','003'),
	('100041','Non Fiksi','004'),
	('100051','Hukum','005'),
	('100061','Biografi','006'),
	('100071','Ensiklopedi','007'),
	('100081','Komik','008'),
	('100191','Majalah','009'),
	('100210','Kamus','010');
	
-- Create Data Penerbit
INSERT INTO penerbit 
	(id_penerbit,nama_penerbit,no_telepon,alamat) 
values 
	('990011','Air Langga','02157848488','Jakarta'),
	('990012','Kominfo','02157833339','Jakarta'), 
	('990013','Gramedia','02157848434','Jakarta'),
	('990014','Republika','02157847676','Jogja'),
	('990015','Andi Publishers','02157842123','Jogja'),
	('990016','Media Pressindo','02454642123','Jogja'),
	('990017','Tiga Serangkai PM','02455657123','Solo'),
	('990018','Erlangga','02134358434','Jakarta'),
	('990019','Yudhistira','02139999434','Jakarta'),
	('990020','Penerbit Mizan','02134377884','Bandung');
	
-- Create Data Buku 
INSERT INTO buku 
	(id_buku,id_penerbit,id_kategori,judul,pengarang,tahun_terbit) 
values 
	(2001,990013,100031,'Naik Awan','Iwan Yuswandi','2002'), 
	(2002,990020,100031,'Dimanakah Ujung Pelangi','Iwan Yuswandi dan Faza','1998'), 
	(2003,990013,100031,'Pangeran Negeri Bunga','Ana P. Dwiyana dan Mariam Sofrina','2006'), 
	(2004,990019,100011,'Api Sejarah','Ahmad Mansur Suryanegara','2010'), 
	(2005,990014,100011,'Konflik Sejarah','Anwar Kurnia','2005'), 
	(2006,990018,100011,'Ilmu Pengetahuan Sosial Sejarah','Eryk Kumseri','2006'), 
	(2007,990012,100021,'Jaringan Komputer','Edi Sarwono','2005'), 
	(2008,990015,100021,'Pemerograman Java Dasar','Budi Hartono','2007'), 
	(2009,990015,100021,'Pengenalan Database','Budi Hartono','2006'),
	(2010,990017,100210,'Kamus Indonesia Inggris','Hendrik Sarabia','2017');

-- Create Data Penjaga Perpustakaan 
INSERT INTO penjaga_perpustakaan 
	(id_penjaga,nama_penjaga,no_telepon) 
values
	('211','Sukidjo','081923344556'), 
	('221','Mutia Alatas','085712233445'),
	('231','Ali Budiman','082156677889'),
	('241','Rahma Aulia','083898877665');
 
-- Create Data Peminjaman 
 insert into peminjaman
 	(id_peminjaman,id_anggota,id_penjaga,tanggal_peminjaman,tanggal_pengembalian,status) 
 values 
	 (71001,11223341,221,'2020-12-01','2020-12-07','Dikembalikan'), 
	 (71002,11223342,211,'2020-11-07','2020-11-14','Dikembalikan'), 
	 (71003,11223343,231,'2020-10-27',null,'Dipinjam'), 
	 (71004,11223344,241,'2020-12-07','2020-12-14','Dikembalikan'), 
	 (71005,11223345,211,'2020-12-22',null,'Dipinjam'),
	 (71006,11223346,231,'2020-11-17','2020-11-22','Dikembalikan'),
	 (71007,11223347,221,'2020-11-25',null,'Dipinjam'); 
	 
-- Create Data Peminjaman Detail 
 insert into peminjaman_detail 
 	(id_peminjaman_detail,id_peminjaman,id_buku) 
 values 
	 (3010,71001,2001), 
	 (3011,71002,2002), 
	 (3012,71003,2004), 
	 (3013,71003,2006), 
	 (3014,71004,2010), 
	 (3015,71005,2009), 
	 (3016,71006,2003), 
	 (3017,71006,2008);

select * from anggota
select * from kategori
select * from buku
select * from penerbit
select * from penjaga_perpustakaan
select * from peminjaman
select * from peminjaman_detail

select * from kategori
select * from buku where id_kategori in (select id_kategori from kategori)

select judul, pengarang, id_penerbit from buku where id_penerbit = (select id_penerbit from penerbit where id_penerbit=990013)

select a.nama, b.judul, k.nama_kategori, p.status from anggota a join peminjaman p
on a.id_anggota=p.id_anggota join peminjaman_detail pd on p.id_peminjaman=pd.id_peminjaman
join buku b on b.id_buku=pd.id_buku join kategori k on b.id_kategori=k.id_kategori

select b.judul, b.pengarang, p.nama_penerbit, p.alamat from buku b join penerbit p on b.id_penerbit=p.id_penerbit

select b.judul, k.nama_kategori, b.pengarang, p.nama_penerbit, p.alamat, k.no_rak from penerbit p join buku b 
on p.id_penerbit=b.id_penerbit join kategori k on b.id_kategori=k.id_kategori

select p. id_anggota, a.nama, p.status,p.tanggal_peminjaman, pp.nama_penjaga  from anggota a join peminjaman p on a.id_anggota=p.id_anggota
join penjaga_perpustakaan pp on p.id_penjaga=pp.id_penjaga where p.tanggal_peminjaman between '2020-12-01' and '2020-12-22'

create trigger tgg_add_product on Buku 
for insert 
as 
	declare @buku varchar (30)
begin
	select @buku = id_buku from inserted
	print 'Buku `' +@buku + '` berhasil ditambahkan'
end

insert into Buku(id_buku, id_penerbit, id_kategori, judul, pengarang, tahun_terbit)
values (2011, 990017, 100210, 'Kamus Indo Jerman', 'Ravenusa', 2020)

create procedure sp_nama_nim(@nama varchar(30)
)
as 
begin
print 'Nama saya adalah ' + @nama
end

declare @namaAnda varchar(30)
set @namaAnda = 'jhono'

exec sp_cetak_nama 'paijo'
exec sp_cetak_nama @nama = 'paiman'
exec sp_cetak_nama @namaAnda