-- ganti nilai XXXX dg 4 digit nim terakhir Anda
CREATE DATABASE DbRetail_3672;

GO

-- ganti nilai XXXX dg 4 digit nim terakhir Anda
USE DbRetail_3672;

GO

CREATE TABLE Customers_3672(
	customer_id CHAR(10) NOT NULL,
	name VARCHAR(30) NULL,
	address VARCHAR(50) NULL,
	PRIMARY KEY (customer_id)
);

GO

CREATE TABLE Suppliers_3672(
	supplier_id CHAR(10) NOT NULL,
	name VARCHAR(30) NULL,
	address VARCHAR(50) NULL,
	PRIMARY KEY (supplier_id)
);

GO

CREATE TABLE Categories_3672(
	category_id CHAR(6) NOT NULL,
	description VARCHAR(50) NULL,
	PRIMARY KEY (category_id)
);

GO

CREATE TABLE Products_3672(
	product_id CHAR(15) NOT NULL,
	name VARCHAR(50) NULL,
	stok INT NULL,
	purchasing_price MONEY NULL,
	selling_price MONEY NULL,
	category_id CHAR(6) NOT NULL 
		FOREIGN KEY REFERENCES Categories_3672 (category_id)
		ON UPDATE CASCADE ON DELETE NO ACTION,
	supplier_id CHAR(10) NULL 
		FOREIGN KEY REFERENCES Suppliers_3672 (supplier_id)
		ON UPDATE CASCADE ON DELETE NO ACTION,
	PRIMARY KEY (product_id)
);

GO

CREATE TABLE Orders_3672(
	order_id CHAR(14) NOT NULL,
	customer_id CHAR(10) NOT NULL
		FOREIGN KEY REFERENCES Customers_3672 (customer_id)
		ON UPDATE CASCADE ON DELETE NO ACTION,
	salesman_id VARCHAR(10) NOT NULL,
	date DATETIME NULL,
	PRIMARY KEY (order_id)
);

GO

CREATE TABLE OrderItems_3672(
	order_id CHAR(14) NOT NULL
		FOREIGN KEY REFERENCES Orders_3672 (order_id)
		ON UPDATE CASCADE ON DELETE NO ACTION,
	product_id CHAR(15) NOT NULL
		FOREIGN KEY REFERENCES Products_3672 (product_id)
		ON UPDATE CASCADE ON DELETE NO ACTION,
	amount INT NULL,
	purchasing_price MONEY NULL,
	selling_price MONEY NULL,
	PRIMARY KEY (order_id, product_id)
);

GO

INSERT INTO Customers_3672 VALUES ('CUS-000001','Bagus Nur Hakim','Jakarta'),
('CUS-000002','Putri Kharisma','Yogyakarta'),
('CUS-000003','Aliany Milawaty','Yogyakarta'),
('CUS-000004','Yudha Adisaputra','Solo'),
('CUS-000005','Nurafni Oktaviani','Surabaya'),
('CUS-000006','Meilia','Bandung'),
('CUS-000007','Aulia Luthfi Anna','Jakarta'),
('CUS-000008','Ichzam Rusmana','Medan'),
('CUS-000009','Tri Yulianti','Makasar'),
('CUS-000010','Ervina Jayanti','Surabaya'),
('CUS-000011','Desi Wulandari','Yogyakarta'),
('CUS-000012','Sukma Tri Setia','Medan'),
('CUS-000013','Abinaya Basupati','Jakarta'),
('CUS-000014','Hadrian Gustin Alvaro','Jakarta'),
('CUS-000015','Nathania Earline','Surabaya');

GO

INSERT INTO Categories_3672 VALUES ('CG-001','Fashions & Accessories'),
('CG-002','Clothes'),
('CG-003','Beauty'),
('CG-004','Health'),
('CG-005','Household'),
('CG-006','Kitchen');
INSERT INTO Categories_3672 VALUES ('CG-007','Baby Care');
INSERT INTO Categories_3672 VALUES ('CG-008','Handphone & Tablet');
INSERT INTO Categories_3672 VALUES ('CG-009','Laptop & Accessories');
INSERT INTO Categories_3672 VALUES ('CG-010','Computer & Accessories');
INSERT INTO Categories_3672 VALUES ('CG-011','Electronic');
INSERT INTO Categories_3672 VALUES ('CG-012','Camera, Photo & Video');
INSERT INTO Categories_3672 VALUES ('CG-013','Otomotif');
INSERT INTO Categories_3672 VALUES ('CG-014','Sports');
INSERT INTO Categories_3672 VALUES ('CG-015','Office & Stationery');
INSERT INTO Categories_3672 VALUES ('CG-016','Souvenirs & Gifts');
INSERT INTO Categories_3672 VALUES ('CG-017','Books');
INSERT INTO Categories_3672 VALUES ('CG-018','Softwares');
INSERT INTO Categories_3672 VALUES ('CG-019','Films, Musics & Games');
INSERT INTO Categories_3672 VALUES ('CG-020','Toys & Hobbies');
INSERT INTO Categories_3672 VALUES ('CG-021','Foods & Drinks');

GO

INSERT INTO Suppliers_3672 VALUES ('SUP-000001','G&R Collection','Semarang');
INSERT INTO Suppliers_3672 VALUES ('SUP-000002','Mollersz','Jakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000003','Tamza Accessories','Surabaya');
INSERT INTO Suppliers_3672 VALUES ('SUP-000004','Wallette','Medan');
INSERT INTO Suppliers_3672 VALUES ('SUP-000005','The Watch Gallery','Surabaya');
INSERT INTO Suppliers_3672 VALUES ('SUP-000006','Bags Collection','Medan');
INSERT INTO Suppliers_3672 VALUES ('SUP-000007','Couple9','Jakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000008','Swag Corner','Surabaya');
INSERT INTO Suppliers_3672 VALUES ('SUP-000009','Kiss_OS','Jakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000010','YsN','Makasar');
INSERT INTO Suppliers_3672 VALUES ('SUP-000011','Legnarose Beauty','Jakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000012','Mutiara Cosmetics','Surabaya');
INSERT INTO Suppliers_3672 VALUES ('SUP-000013','Essential Store','Jakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000014','Homy Collections','Medan');
INSERT INTO Suppliers_3672 VALUES ('SUP-000015','Viventi Living','Surabaya');
INSERT INTO Suppliers_3672 VALUES ('SUP-000016','Orion Bed','Jakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000017','Tupperware ID','Makasar');
INSERT INTO Suppliers_3672 VALUES ('SUP-000018','Utama Mega','Jakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000019','Mavely Baby','Jakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000020','Sciabuna Store','Yogyakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000021','Kenzie Baby','Surabaya');
INSERT INTO Suppliers_3672 VALUES ('SUP-000022','Chios CK','Yogyakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000023','JT Shop Indo','Jakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000024','Saga Case ID','Medan');
INSERT INTO Suppliers_3672 VALUES ('SUP-000025','Graha Baru','Surabaya');
INSERT INTO Suppliers_3672 VALUES ('SUP-000026','Parttop ID','Medan');
INSERT INTO Suppliers_3672 VALUES ('SUP-000027','Alfa Tech','Jakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000028','King Spycam','Jakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000029','Glories ID','Jakarta');
INSERT INTO Suppliers_3672 VALUES ('SUP-000030','Budget Gadget','Jakarta');

GO

INSERT INTO Products_3672 VALUES ('CG-001-IT000001','Snapback Hat NY',50,135000,140000,'CG-001','SUP-000001');
INSERT INTO Products_3672 VALUES ('CG-001-IT000002','Roberto Cavalli Sunglass',100,160000,165000,'CG-001','SUP-000001');
INSERT INTO Products_3672 VALUES ('CG-001-IT000003','Porsche Design Sunglass',25,265000,275000,'CG-001','SUP-000001');
INSERT INTO Products_3672 VALUES ('CG-001-IT000004','Giorgio Agneli Wallet',50,145000,150000,'CG-001','SUP-000002');
INSERT INTO Products_3672 VALUES ('CG-001-IT000005','Levis Design Walet',50,160000,175000,'CG-001','SUP-000002');
INSERT INTO Products_3672 VALUES ('CG-001-IT000006','Swarovski JAQ-001',15,243000,250000,'CG-001','SUP-000003');
INSERT INTO Products_3672 VALUES ('CG-001-IT000007','Vintage Models NCK',35,130000,135000,'CG-001','SUP-000003');
INSERT INTO Products_3672 VALUES ('CG-001-IT000008','Rossy Net Silver NCK',30,140000,150000,'CG-001','SUP-000003');
INSERT INTO Products_3672 VALUES ('CG-001-IT000009','Bohemian Blue Saphire NCK',50,240000,245000,'CG-001','SUP-000003');
INSERT INTO Products_3672 VALUES ('CG-001-IT000010','Lady Crystal NCK',25,165000,170000,'CG-001','SUP-000003');
INSERT INTO Products_3672 VALUES ('CG-002-IT000011','Black Gray Long SLeeved Shirt',100,100000,103000,'CG-002','SUP-000007');
INSERT INTO Products_3672 VALUES ('CG-002-IT000012','Hoddies Auntumn Coat',50,150000,160000,'CG-002','SUP-000007');
INSERT INTO Products_3672 VALUES ('CG-002-IT000013','Sweater Tribal Gazilo',100,90000,105000,'CG-002','SUP-000007');
INSERT INTO Products_3672 VALUES ('CG-002-IT000014','Jogger Sport Addidas',50,145000,150000,'CG-002','SUP-000008');
INSERT INTO Products_3672 VALUES ('CG-002-IT000015','Hoddie Nike E01',50,185000,190000,'CG-002','SUP-000008');
INSERT INTO Products_3672 VALUES ('CG-002-IT000016','Hoddie Zipper Marine',50,170000,175000,'CG-002','SUP-000008');
INSERT INTO Products_3672 VALUES ('CG-002-IT000017','Jadore Blouse',25,150000,159000,'CG-002','SUP-000008');
INSERT INTO Products_3672 VALUES ('CG-002-IT000018','Pieter Sweater',20,135000,140000,'CG-002','SUP-000010');
INSERT INTO Products_3672 VALUES ('CG-002-IT000019','Line Long Tunik Blouse',35,105000,120000,'CG-002','SUP-000010');
INSERT INTO Products_3672 VALUES ('CG-002-IT000020','Poland Tile Dress',50,125000,130000,'CG-002','SUP-000010');
INSERT INTO Products_3672 VALUES ('CG-003-IT000021','Babyliss Pro Curl',10,675000,689000,'CG-003','SUP-000011');
INSERT INTO Products_3672 VALUES ('CG-003-IT000022','NXY Soft Matte Lip Cream',50,125000,130000,'CG-003','SUP-000012');
INSERT INTO Products_3672 VALUES ('CG-003-IT000023','Manicure Set 777',20,195000,199000,'CG-003','SUP-000011');
INSERT INTO Products_3672 VALUES ('CG-003-IT000024','Rosemary Essential Oil',50,55000,60000,'CG-003','SUP-000013');
INSERT INTO Products_3672 VALUES ('CG-003-IT000025','Naked 3 Palette',50,235000,245000,'CG-003','SUP-000012');
INSERT INTO Products_3672 VALUES ('CG-004-IT000026','Bepathen First Aid',50,95000,100000,'CG-004','SUP-000013');
INSERT INTO Products_3672 VALUES ('CG-004-IT000027','MSI Bio Spray',50,165000,175000,'CG-004','SUP-000013');
INSERT INTO Products_3672 VALUES ('CG-004-IT000028','Medical Pro Bags',20,2000000,2090000,'CG-004','SUP-000013');
INSERT INTO Products_3672 VALUES ('CG-005-IT000029','Minimalis Sofa L',10,2000000,2100000,'CG-005','SUP-000014');
INSERT INTO Products_3672 VALUES ('CG-005-IT000030','Bellin Desk Pink',10,900000,949000,'CG-005','SUP-000014');
INSERT INTO Products_3672 VALUES ('CG-005-IT000031','Prada Prem Curtain',10,1000000,1100000,'CG-005','SUP-000015');
INSERT INTO Products_3672 VALUES ('CG-005-IT000032','Shoes Hanging',50,135000,140000,'CG-005','SUP-000015');
INSERT INTO Products_3672 VALUES ('CG-005-IT000033','Lady American Mattress Protector',50,280000,290000,'CG-005','SUP-000016');
INSERT INTO Products_3672 VALUES ('CG-005-IT000034','Waterproof Sprei Big',50,150000,155000,'CG-005','SUP-000016');
INSERT INTO Products_3672 VALUES ('CG-006-IT000035','Tupperware Blossom Series',40,545000,6320000,'CG-006','SUP-000017');
INSERT INTO Products_3672 VALUES ('CG-006-IT000036','Oxone Juicer OX-965',25,1750000,1850000,'CG-006','SUP-000014');
INSERT INTO Products_3672 VALUES ('CG-006-IT000037','Happycall Double Pan 32cm',10,1135000,1140000,'CG-006','SUP-000014');
INSERT INTO Products_3672 VALUES ('CG-006-IT000038','Vicenza Dining Set',50,439000,450000,'CG-006','SUP-000014');
INSERT INTO Products_3672 VALUES ('CG-006-IT000039','Sport Bottle 600ml',35,65000,680000,'CG-006','SUP-000017');

--------------------------

ALTER TABLE Customers_3672
ADD region_id VARCHAR(5);

GO

ALTER TABLE Customers_3672
ADD year_of_birth INT;

GO

alter table Suppliers_3672
add phone varchar(12) null;

update Customers_3672 set region_id='WL001', year_of_birth=2010 where customer_id='CUS-000001';
update Customers_3672 set region_id='WL002', year_of_birth=2009 where customer_id='CUS-000002';
update Customers_3672 set region_id='WL002', year_of_birth=2010 where customer_id='CUS-000003';
update Customers_3672 set region_id='WL005', year_of_birth=2006 where customer_id='CUS-000004';
update Customers_3672 set region_id='WL003', year_of_birth=2010 where customer_id='CUS-000005';
update Customers_3672 set region_id='WL004', year_of_birth=2007 where customer_id='CUS-000006';
update Customers_3672 set region_id='WL001', year_of_birth=2008 where customer_id='CUS-000007';
update Customers_3672 set region_id='WL007', year_of_birth=2009 where customer_id='CUS-000008';
update Customers_3672 set region_id='WL006', year_of_birth=2000 where customer_id='CUS-000009';
update Customers_3672 set region_id='WL003', year_of_birth=2007 where customer_id='CUS-000010';
update Customers_3672 set region_id='WL002', year_of_birth=2008 where customer_id='CUS-000011';
update Customers_3672 set region_id='WL007', year_of_birth=2009 where customer_id='CUS-000012';
update Customers_3672 set region_id='WL001', year_of_birth=2009 where customer_id='CUS-000013';
update Customers_3672 set region_id='WL001', year_of_birth=2011 where customer_id='CUS-000014';
update Customers_3672 set region_id='WL003', year_of_birth=2011 where customer_id='CUS-000015';


INSERT INTO Orders_3672 VALUES ('20160301-00001','CUS-000002','SLM-000001','2016-03-01');
INSERT INTO OrderItems_3672 VALUES ('20160301-00001','CG-001-IT000007',1,130000, 135000.00);
INSERT INTO OrderItems_3672 VALUES ('20160301-00001','CG-003-IT000025',1,235000.00, 245000.00);
INSERT INTO OrderItems_3672 VALUES ('20160301-00001','CG-003-IT000023',1,195000.00, 199000.00);
INSERT INTO Orders_3672 VALUES ('20160301-00002','CUS-000005','SLM-000003','2016-03-01');
INSERT INTO OrderItems_3672 VALUES ('20160301-00002','CG-005-IT000032',1,135000.00, 140000.00);
INSERT INTO Orders_3672 VALUES ('20160301-00003','CUS-000001','SLM-000001','2016-03-01');
INSERT INTO OrderItems_3672 VALUES ('20160301-00003','CG-001-IT000005',1,160000.00, 175000.00);
INSERT INTO OrderItems_3672 VALUES ('20160301-00003','CG-006-IT000039',1,65000.00, 680000.00);
INSERT INTO Orders_3672 VALUES ('20160302-00001','CUS-000004','SLM-000002','2016-03-02');
INSERT INTO OrderItems_3672 VALUES ('20160302-00001','CG-002-IT000018',1,135000.00, 140000.00);
INSERT INTO Orders_3672 VALUES ('20160302-00002','CUS-000010','SLM-000006','2016-03-02');
INSERT INTO OrderItems_3672 VALUES ('20160302-00002','CG-006-IT000038',1,439000.00, 450000.00);
INSERT INTO Orders_3672 VALUES ('20160303-00001','CUS-000007','SLM-000004','2016-03-03');
INSERT INTO OrderItems_3672 VALUES ('20160303-00001','CG-003-IT000021',1,675000.00, 689000.00);
INSERT INTO OrderItems_3672 VALUES ('20160303-00001','CG-003-IT000022',2,125000.00, 130000.00);
INSERT INTO OrderItems_3672 VALUES ('20160303-00001','CG-003-IT000024',1,55000.00, 60000.00);
INSERT INTO Orders_3672 VALUES ('20160304-00001','CUS-000003','SLM-000004','2016-03-04');
INSERT INTO OrderItems_3672 VALUES ('20160304-00001','CG-002-IT000013',1,90000.00, 105000.00);
INSERT INTO OrderItems_3672 VALUES ('20160304-00001','CG-002-IT000017',1,150000.00, 159000.00);
INSERT INTO Orders_3672 VALUES ('20160304-00002','CUS-000008','SLM-000005','2016-03-04');
INSERT INTO OrderItems_3672 VALUES ('20160304-00002','CG-001-IT000002',1,160000.00, 165000.00);
INSERT INTO Orders_3672 VALUES ('20160305-00001','CUS-000006','SLM-000009','2016-03-05');
INSERT INTO OrderItems_3672 VALUES ('20160305-00001','CG-001-IT000010',1,165000.00, 170000.00);
INSERT INTO OrderItems_3672 VALUES ('20160305-00001','CG-001-IT000008',1,140000.00, 150000.00);
INSERT INTO Orders_3672 VALUES ('20160306-00001','CUS-000009','SLM-000002','2016-03-06');
INSERT INTO OrderItems_3672 VALUES ('20160306-00001','CG-002-IT000019',2,105000.00, 120000.00);
INSERT INTO Orders_3672 VALUES ('20160306-00002','CUS-000012','SLM-000010','2016-03-06');
INSERT INTO OrderItems_3672 VALUES ('20160306-00002','CG-002-IT000017',1,150000.00, 159000.00);
INSERT INTO OrderItems_3672 VALUES ('20160306-00002','CG-002-IT000015',1,185000.00, 190000.00);
INSERT INTO Orders_3672 VALUES ('20160307-00001','CUS-000015','SLM-000007','2016-03-07');
INSERT INTO OrderItems_3672 VALUES ('20160307-00001','CG-001-IT000003',1,265000.00, 275000.00);
INSERT INTO Orders_3672 VALUES ('20160308-00001','CUS-000005','SLM-000004','2016-03-08');
INSERT INTO OrderItems_3672 VALUES ('20160308-00001','CG-002-IT000011',1,100000.00, 103000.00);
INSERT INTO OrderItems_3672 VALUES ('20160308-00001','CG-002-IT000012',1,150000.00, 160000.00);
INSERT INTO Orders_3672 VALUES ('20160308-00002','CUS-000013','SLM-000008','2016-03-08');
INSERT INTO OrderItems_3672 VALUES ('20160308-00002','CG-001-IT000004',1,145000.00, 150000.00);
INSERT INTO OrderItems_3672 VALUES ('20160308-00002','CG-002-IT000014',1,145000.00, 150000.00);
INSERT INTO Orders_3672 VALUES ('20160309-00001','CUS-000010','SLM-000010','2016-03-09');
INSERT INTO OrderItems_3672 VALUES ('20160309-00001','CG-005-IT000033',1,280000.00, 290000.00);
INSERT INTO Orders_3672 VALUES ('20160309-00002','CUS-000007','SLM-000003','2016-03-09');
INSERT INTO OrderItems_3672 VALUES ('20160309-00002','CG-006-IT000036',1,1750000.00, 1850000.00);

--SUBQUERY
--1
select name as product, stok from Products_3672 
where stok > (select stok from Products_3672 where name='Levis Design Walet')
--2
select name as product, stok from Products_3672 
where category_id = (select category_id from Categories_3672 where description='Health')
--3-
select Products_3672.product_id, Products_3672.name as product, 
Products_3672.purchasing_price, Categories_3672.description as category
from Products_3672 left join Categories_3672
on Products_3672.product_id=Categories_3672.category_id
where purchasing_price between 200000 and 500000 
--4-
select customer_id, name as customer from Customers_3672 
where name in (select name from Customers_3672 where name like '%B%' or name like '%K%')
select name from Customers_3672 where name like '%B and K%'
--5
select  category_id, description from Categories_3672 
where category_id not in (select category_id from Products_3672)
--6
select  product_id, name as product from Products_3672 
where product_id in (select product_id from OrderItems_3672)
--7
select product_id, name as product, stok from Products_3672
where stok in (select stok from Products_3672 where stok < 25 )
--8
select name as product, (select sum(amount) from OrderItems_3672 
where product_id = Products_3672.product_id) as [amount] from Products_3672 order by amount desc
--9
select customer_id, name as customer from Customers_3672
where customer_id not in (select customer_id from Orders_3672)
--10
select c.name as customer, count(o.customer_id) as [jumlah transaksi] from Customers_3672 c join Orders_3672 o 
on c.customer_id=o.customer_id group by c.name order by [jumlah transaksi] desc
--11
select c.name as customer, count(o.customer_id) as total from Customers_3672 c join Orders_3672 o 
on c.customer_id=o.customer_id join OrderItems_3672 om on o.order_id=om.order_id group by name 
having count(o.customer_id)>(select count(o.customer_id) as total from Customers_3672 c 
join Orders_3672 o on c.customer_id=o.customer_id join OrderItems_3672 om 
on o.order_id=om.order_id where name = 'Yudha Adisaputra')
--12
select * from Customers_3672 where customer_id = (select customer_id from Orders_3672 
where customer_id = Customers_3672.customer_id)
--Subquery mengembalikan lebih dari 1 nilai. Ini tidak diizinkan ketika subquery mengikuti =, !=, <, <= , >, >= 
--atau ketika subquery digunakan sebagai ekspresi.
--13
select category_id, sum(stok) as stok from Products_3672 group by category_id
having sum(stok) >= (select sum (stok) from Products_3672 where category_id='CG-005') group by category_id
--seharusnya grouping category_id berada didalam kurung sebelumnya,
--karena fungsi grouping utk pengelompokkan data yg dilakukan berdasarkan daftar kolom yg disebutkan dalam SELECT kolom

--MODUL JOIN 
--1
select c.description as category_3672, p.name as product_3672, p.stok, p.selling_price 
from Categories_3672 c join Products_3672 p on c.category_id=p.category_id
--2
select c.description as category_3672, count(c.description) as amount3672 from Categories_3672 c 
join Products_3672 p on c.category_id=p.category_id group by description
--3
select c.description as category_3672, count(c.description) as amount_3672 from Categories_3672 c join Products_3672 p
on c.category_id=p.category_id group by description having count(description) > 5
--4
select s.name as supplier_3672, s.phone, s.address, sum(stok) as total_stok from Suppliers_3672 s join Products_3672 p
on s.supplier_id=p.supplier_id group by s.name, s.phone, s.address
--5
select s.name as supplier_3672, s.phone, s.address, sum(p.purchasing_price*p.stok) as total_purchase from 
Suppliers_3672 s join Products_3672 p on s.supplier_id=p.supplier_id group by s.name, s.phone, s.address
--6
select c.name as customer_3672, o.order_id, o.date from Customers_3672 c join Orders_3672 o 
on c.customer_id=o.customer_id
--7-
select c.name as customer_3672, o.order_id, o.date, oi.product_id, oi.amount, oi.selling_price, 
oi.selling_price*oi.amount as sub_total_3672 from Customers_3672 c join Orders_3672 o 
on c.customer_id=o.customer_id join OrderItems_3672 oi on o.order_id=oi.order_id
--8 
select c.name as customer_3672, o.order_id, o.date, p.name as product, om.amount, om.selling_price, 
om.selling_price*om.amount as sub_total_3672 from Customers_3672 c join Orders_3672 o on c.customer_id=o.customer_id 
join OrderItems_3672 om on o.order_id=om.order_id join Products_3672 p on om.product_id=p.product_id
--9
select c.name as customer_3672, o.order_id, o.date, ca.description as category_3672, p.name as product, om.amount, 
om.selling_price, om.selling_price*om.amount as sub_total_3672 from Customers_3672 c join Orders_3672 o 
on c.customer_id=o.customer_id join OrderItems_3672 om on o.order_id=om.order_id join Products_3672 p 
on om.product_id=p.product_id join Categories_3672 ca on p.category_id=ca.category_id
WHERE o.date BETWEEN '2016-03-02' AND '2016-03-05'
--10-
select c.name as customer_3672, sum(oi.selling_price*oi.amount) as Total from Customers_3672 c join Orders_3672 o 
on c.customer_id=o.customer_id join OrderItems_3672 oi on o.order_id=oi.order_id 
group by name
--11
select c.name as customer, sum(om.selling_price*om.amount) as total from Customers_3672 c join Orders_3672 o 
on c.customer_id=o.customer_id join OrderItems_3672 om on o.order_id=om.order_id group by name 
having sum(om.selling_price*om.amount)>(select sum (om.selling_price*om.amount) as total from Customers_3672 c 
join Orders_3672 o on c.customer_id=o.customer_id join OrderItems_3672 om 
on o.order_id=om.order_id where name = 'Sukma Tri Setia')
--12
SELECT c.description as category, p.name as product, p.purchasing_price, p.selling_price 
FROM Products_3672 p LEFT JOIN Categories_3672 c ON p.category_id = c.category_id 
ORDER BY c.description
--karena left join akan akan menampilkan semua baris dari tabel sebelah kiri dengan gabungan dari tabel sebelah kanan.
--kebalikan dari LEFT JOIN, pada RIGHT JOIN tabel yang menjadi acuan ada disebelah kanan.
SELECT c.description as category, p.name as product, p.purchasing_price, p.selling_price 
FROM Products_3672 p RIGHT JOIN Categories_3672 c ON p.category_id = c.category_id 
ORDER BY c.description

--13
SELECT p.order_id, p.date, c.customer_id, c.name as customer, pi.product_id, i.name as product, pi.amount 
FROM Orders_3672 p JOIN Customers_3672 c JOIN OrderItems_3672 pi JOIN Products_3672 i 
ON p.customer_id = c.customer_id ON p.order_id = pi.order_id ON pi.product_id = i.product_id 
ORDER BY date DESC
--karena tabel Order_3672 dan Cusstomer_3672 tertutup/disembunyikan oleh dua tabel setelahnya
SELECT p.order_id, p.date, c.customer_id, c.name as customer, pi.product_id, i.name as product, pi.amount 
FROM Orders_3672 p JOIN Customers_3672 c ON p.customer_id = c.customer_id JOIN OrderItems_3672 pi 
ON p.order_id = pi.order_id JOIN Products_3672 i ON pi.product_id = i.product_id 
ORDER BY date DESC

select * from Products_3672
select * from Customers_3672 
select * from Categories_3672
select * from OrderItems_3672
select * from Orders_3672
select * from Suppliers_3672

--TRANSACTION
update Customers_3672 set name = 'Bagus Aliandro'
where customer_id = 'CUS-000001'

begin transaction
update Customers_3672 set name = 'Paijo'
where customer_id = 'CUS-000004'
rollback transaction

-- deklarasi variabel
declare @insert_err int
declare @delete_err int
begin transaction

-- tambah customer baru
insert into Customers_3672(customer_id, name, address, region_id, year_of_birth)
values ('CUS-000016', 'Jhono', 'Yogyakarta', 'WL002', 2008)
-- simpan err number hasil dari perintah insert
set @insert_err = @@error
-- hapus customer
delete from Customers_3672 where customer_id = 'CUS-000005'
-- simpan err number hasil dari perintah delete
set @delete_err = @@error
if @insert_err = 0 and @delete_err = 0 -- tidak ada error
begin
	print 'transaksi berhasil'
	commit transaction
end
else
begin
	print 'transaksi gagal'
	rollback transaction
end

begin transaction
update Customers_3672 set name = 'Aulia Luthfi'
where customer_id = 'CUS-000007'

--COMMIT TRANSACTION

create table ConsistencyTest(
	data smallint
	constraint uq_Data1 unique
)

insert into ConsistencyTest (data) values (1)
insert into ConsistencyTest (data) values (4)

insert into ConsistencyTest (data) values ('Hai... apa kabar')
insert into ConsistencyTest (data) values (3), (3)

select * from ConsistencyTest

--PERTEMUAN 5 - Join dan Subquery
--1
select c.description as category_3672,  p.name as product_3672, p.purchasing_price, p.selling_price  
from Categories_3672 c join Products_3672 p on c.category_id=p.category_id
--2
select s.supplier_id, s.name as supplier_3672, p.product_id, p.name as product_3672 
from Suppliers_3672 s join Products_3672 p on s.supplier_id=p.supplier_id
--3
select supplier_id, name as supplier_3672, address from Suppliers_3672 
where supplier_id in (select supplier_id from Products_3672) 
--4
select  category_id, description from Categories_3672 
where category_id not in (select category_id from Products_3672)
--5
select  s.supplier_id, s.name as [supplier], p.product_id, p.name as [product] 
from Suppliers_3672 s join Products_3672 p on s.supplier_id=p.supplier_id 
where product_id not in (select product_id from OrderItems_3672)
--6
select c.customer_id, c.name, c.address, c.region_id, c.year_of_birth 
from Customers_3672 c join Orders_3672 o on c.customer_id=o.customer_id 
where date in (select date from Orders_3672 where date ='2016-03-01') order by customer_id
--7
select  s.supplier_id, s.name as supplier_3672, p.product_id, p.name as product 
from Suppliers_3672 s join Products_3672 p on s.supplier_id=p.supplier_id 
where product_id not in (select product_id from OrderItems_3672 oi join Orders_3672 o
on oi.order_id=o.order_id where date = '2016-03-07')
--8 
select top 1 c.customer_id, c.name as customer_3672, c.address from Orders_3672 o join 
Customers_3672 c on o.customer_id=c.customer_id group by c.customer_id, c.name, c.address
order by count(*) desc
--9
select c.name as customer_3672, sum(oi.selling_price*oi.amount) as total 
from Customers_3672 c join Orders_3672 o on c.customer_id=o.customer_id 
join OrderItems_3672 oi on o.order_id=oi.order_id group by name
--10
select c.name as customer_3672, sum(om.selling_price*om.amount) as total from Customers_3672 c join 
Orders_3672 o on c.customer_id=o.customer_id join OrderItems_3672 om on o.order_id=om.order_id 
group by name having sum(om.selling_price*om.amount)>(select sum (om.selling_price*om.amount) as total 
from OrderItems_3672 om join Orders_3672 o on om.order_id=o.order_id  join Customers_3672 c  
 on o.customer_id=c.customer_id  where name ='Sukma Tri Setia')
 -----------------------------------------------------------------------------------------------
 --T-SQL
 --1
DECLARE @nama VARCHAR(30), @gajiPokok int
SET @nama = 'Paijo'
SET @gajiPokok ='100000'
PRINT 'Nama = ' + @nama + ', Gaji = ' + CAST(@gajiPokok AS VARCHAR)
--2
DECLARE @bilangan INT
DECLARE @ketBilangan VARCHAR(6)
SET @bilangan = 1
WHILE (@bilangan <= 10)
BEGIN
IF (@bilangan % 2 = 0)
SET @ketBilangan = 'GENAP'
ELSE
SET @ketBilangan = 'GANJIL'
PRINT 'Bilangan ' + CAST(@bilangan AS VARCHAR) +
' adalah bilangan ' + @ketBilangan
SET @bilangan = @bilangan + 1
END
--3
DECLARE @bilangan INT
SET @bilangan = 1
WHILE (@bilangan <= 10)
BEGIN
IF NOT (@bilangan = 5 or @bilangan = 8 or @bilangan = 9)
PRINT @bilangan
SET @bilangan = @bilangan + 1
END
--4
DECLARE @bilangan INT
SET @bilangan = 0
WHILE (@bilangan < 10)
BEGIN
SET @bilangan = @bilangan + 1
IF (@bilangan = 5 or @bilangan = 8 or @bilangan = 9)
continue
PRINT @bilangan
END
--5
DECLARE @product1 VARCHAR(50)
DECLARE @product2 VARCHAR(50)
DECLARE @hargaJual1 INT
DECLARE @hargaJual2 INT
SET @product1 ='Hoddie Nike E01'
SET @product2 = 'Hoddie Zipper Marine'
SELECT @hargaJual1 = selling_price FROM Products_3672 WHERE name = @product1
SELECT @hargaJual2 = selling_price FROM Products_3672 WHERE name = @product2
PRINT @product1 + ' = Rp. ' + CAST(@hargaJual1 AS VARCHAR)
PRINT @product2 + ' = Rp. ' + CAST(@hargaJual2 AS VARCHAR)
PRINT 'Selisih harga jual ' + @product1 + ' dan ' + @product1 + ' = ' +
CAST(@hargaJual1 - @hargaJual2 AS VARCHAR)
-------------------------------------------------------------------

--RESPONSI
--1
select name, stok, selling_price, selling_price, category_id from Products_3672 where category_id = 'CG-006'
--2
select c.name as customer, count(o.customer_id) as [jumlah transaksi] from Customers_3672 c join Orders_3672 o 
on c.customer_id=o.customer_id group by c.name order by [jumlah transaksi]
--3
select c.name as customer_3672, o.order_id, o.date, p.name as product, om.amount, om.selling_price, 
om.selling_price*om.amount as sub_total_3672 from Customers_3672 c join Orders_3672 o on c.customer_id=o.customer_id 
join OrderItems_3672 om on o.order_id=om.order_id join Products_3672 p on om.product_id=p.product_id order by c.name
--4
select c.customer_id, c.name, c.address, c.region_id, c.year_of_birth 
from Customers_3672 c join Orders_3672 o on c.customer_id=o.customer_id 
where date in (select date from Orders_3672 where date ='2016-03-04') order by customer_id
--5
select  s.supplier_id, s.name as supplier_3672, p.product_id, p.name as product 
from Suppliers_3672 s join Products_3672 p on s.supplier_id=p.supplier_id 
where product_id not in (select product_id from OrderItems_3672 oi join Orders_3672 o
on oi.order_id=o.order_id where date = '2016-03-05')
--6
declare @kota varchar (10)
declare @jml int
set @kota = 'Jakarta'
select @jml = count(*) from Suppliers_3672 where address = @kota
print 'Jumlah supplier = ' + cast (@jml as varchar) + ' orang'

SELECT address, count(supplier_id) FROM Suppliers_3672 group by address
-------------------------------------------------------------------------------
--T-SQL CURSOR
--no1
declare @namaBarang VARCHAR(50)
declare @hargaJual int
declare @noUrut int

declare cursor_barang cursor for
	select name, selling_price from Products_3672
open cursor_barang
set @noUrut = 1

fetch next from cursor_barang into @namaBarang, @hargaJual
while (@@FETCH_STATUS = 0)
begin 
if (@hargaJual > 1000000)
begin 
print cast (@noUrut as varchar) + '. Product = ' + @namaBarang + ', Harga jual = Rp. ' +
cast(@hargaJual as varchar)
set @noUrut = @noUrut + 1
end

fetch next from cursor_barang into @namaBarang, @hargaJual
end
close cursor_barang
deallocate cursor_barang

--no2
declare @namaBarang1 varchar(50)
declare @hargaJual0 int
declare @total int
declare @noUrut1 int

declare cursor_barang1 cursor for
	select name, selling_price from Products_3672
open cursor_barang1
set @noUrut1 = 1
set @total = 0

fetch next from cursor_barang1 into @namaBarang1, @hargaJual0
while (@@FETCH_STATUS = 0)
begin 
if (@hargaJual0 > 1000000)
begin 
print cast (@noUrut1 as varchar) + '. Product = ' + @namaBarang1 + ', Harga jual = Rp. ' +
cast(@hargaJual0 as varchar)
set @noUrut1 = @noUrut1 + 1
set @total += @hargaJual0
end

fetch next from cursor_barang1 into @namaBarang1, @hargaJual0
end
print '================================================================='
PRINT 'Total Harga = '+ CAST (@total as varchar)
close cursor_barang1
deallocate cursor_barang1

--no3
declare @category_id varchar(10)
declare @description varchar(50)
declare @jumlahProduct int
declare @noUrut2 int

declare cursor_barang2 cursor for
select category_id,description from Categories_3672

open cursor_barang2
set @noUrut2 = 1

fetch next from cursor_barang2 into @category_id, @description
while (@@FETCH_STATUS = 0)
begin
select @jumlahProduct = count(*) from Products_3672 where category_id=@category_id
if @jumlahProduct is null set @jumlahProduct = 0
if (@jumlahProduct > 1)
begin
print cast (@noUrut2 as varchar) + '. ' + @description
print '---> Jumlah Product : ' + cast(@jumlahProduct as varchar)
print ' '
set @noUrut2 = @noUrut2 + 1
end
fetch next from cursor_barang2 into @category_id, @description
end
close cursor_barang2
deallocate cursor_barang2

--no4
declare @jumlahProduk int
declare @noUrut3 int
declare @nama0 varchar(50)
declare @customerId varchar(10)

declare cursor_customer cursor for
select customer_id, name from Customers_3672

open cursor_customer
set @noUrut3 = 1

fetch next from cursor_customer into @customerId, @nama0
while (@@FETCH_STATUS = 0)
begin
select @jumlahProduk = count(*) from Orders_3672 where customer_id = @customerId
if @jumlahProduk is null set @jumlahProduk = 0

if (@jumlahProduk > 1)
begin
	print cast(@noUrut3 as varchar) + '. ' + @nama0
	print '---> Jumlah Product : ' + cast(@jumlahProduk as varchar)
	print ''

	set @noUrut3 = @noUrut3 + 1
end
fetch next from cursor_customer into @customerId, @nama0
end
close cursor_customer
deallocate cursor_customer

--5
declare @customer char(14)
declare @nota varchar(30)
declare @noUrut4 int
declare @noUrut5 int

declare @barang varchar(50)
declare @jumlah int
declare @hargaJuall int

--deklarasi cursor #1
declare cursor_jual cursor for
select c.name, o.order_id
from Orders_3672 o join Customers_3672 c on o.customer_id = c.customer_id
where o.date = '2016/03/01'

open cursor_jual
set @noUrut4 = 1

fetch next from cursor_jual into @customer, @nota
while(@@FETCH_STATUS = 0)
begin
print cast(@noUrut4 as varchar) + '. Customer : ' + @customer + ', Order_id : ' + @nota

-- deklarasi cursor #2
declare cursor_info cursor for
select p.name, oi.amount, oi.selling_price
from Products_3672 p join OrderItems_3672 oi on oi.product_id = p.product_id
where oi.order_id = @nota

open cursor_info
set @noUrut5 = 1
fetch next from cursor_info into @barang, @jumlah, @hargaJuall
while(@@FETCH_STATUS = 0)
begin
print '---> ' + cast(@noUrut5 as varchar) + '. Product : ' + @barang + ', Qty : ' +
				cast(@jumlah as varchar) + ', Rp. ' + cast(@hargaJuall as varchar)

set @noUrut5 = @noUrut5 + 1
fetch next from cursor_info into @barang, @jumlah, @hargaJuall
end
close cursor_info
deallocate cursor_info
print ''

set @noUrut4 = @noUrut4 + 1
fetch next from cursor_jual into @customer, @nota
end
close cursor_jual
deallocate cursor_jual

----------------------------------------------------
--STORED PROCEDURE
--1
create procedure sp_cetak_nama(@namaku varchar(30), @nimku int
)
as 
begin
print 'Nama anda adalah ' + @namaku, ' dengan nim' +@nimku
end

declare @namaAku varchar(30)
declare @nimku int
set @namaAku = 'Rizal Gibran'
set @nimku = 20113672

exec sp_cetak_nama @namaku

--2
create procedure sp_bil_ganjil_genap(@mulai int,@selesai int
)
as
declare @keterangan varchar(10)
set @mulai = @mulai
set @selesai = @selesai
while (@mulai <= @selesai)
begin 
if (@mulai % 2 = 0)
set @keterangan = 'GENAP'
else
set @keterangan = 'GANJIL'
print 'Bilangan ' + cast(@mulai as varchar) + ' adalah bilangan ' + @keterangan
set @mulai = @mulai + 1
set @selesai = @selesai
end

exec sp_bil_ganjil_genap 5, 10

--3
create procedure sp_add_supplier(@supllier_id char(10),@name varchar(50), 
@address varchar(30), @phone varchar(12))
as
begin
insert into Suppliers_3672 (supplier_id, name, address, phone)
values (@supllier_id ,@name, @address, @phone)
print 'Data supplier dengan nama ' +@name + ' berhasil ditambahkan'
end

exec sp_add_supplier 'SUP-000035','Pixel Comp','Yogyakarta','081212345678'

drop procedure sp_add_supplier
delete Suppliers_3672 where supplier_id = 'SUP-000035'
select * from Suppliers_3672 where supplier_id = 'SUP-000035'

--5
create procedure sp_cari_product_by_id(@productId varchar(50), @nama varchar(50) output,
@jumlahBarang varchar(50) output)
as 
begin
set @nama = (select p.name from Products_3672 p where product_id=@productId)
set @jumlahBarang = (select p.stok from Products_3672 p where product_id=@productId)
end

declare @product varchar(50)
declare @stok int

exec sp_cari_product_by_id 'CG-006-IT000039', @product output, @stok output
print 'Product = ' +@product + ', stok = ' + cast(@stok as varchar)

drop procedure sp_cari_product_by_id

--6
create procedure sp_cari_product_by_name (@name varchar(20))
as
declare @namaBarang VARCHAR(50)
declare @hargaJual int
declare @stok int
declare @noUrut int

declare cursor_barang cursor for
	select name,stok, selling_price from Products_3672
	where name like '%' + @name +'%'
open cursor_barang
set @noUrut = 1

begin
 fetch next from cursor_barang into @namaBarang, @stok, @hargajual
 print 'Hasil pencarian product berdasarkan kata kunci hoodie`'+@name+'`'
 print '========================================================'

while (@@FETCH_STATUS = 0)
begin 
print cast (@noUrut as varchar) + ',' + @namaBarang + ', stok = '+ cast(@stok as varchar)+ 
', Harga jual = Rp. ' + cast(@hargaJual as varchar)
set @noUrut = @noUrut + 1

fetch next from cursor_barang into @namaBarang, @stok, @hargaJual
end
close cursor_barang
deallocate cursor_barang
end

exec sp_cari_product_by_name 'hoddie'

drop procedure sp_cari_product_by_name

-----------------------------------------------
--TRIGGER
--1
create trigger tgg_add_product on Products_3672 
for insert 
as 
	declare @name varchar (30)
begin
	select @name = name from inserted
	print 'Product `' +@name + '` berhasil ditambahkan'
end

insert into Products_3672(product_id, name, stok, purchasing_price,
selling_price, category_id, supplier_id)
values ('CG-006-IT000040', 'Sport Bottle 900ml', 15, 75000, 780000, 'CG-006', 'SUP-000017')

--2
create trigger tgg_delete_product on Products_3672
for delete
as
	declare @name varchar(30)
begin
	select @name = name from deleted
	print 'Product `' +@name + '` berhasil dihapus'
end

delete from Products_3672 where product_id = 'CG-006-IT000040'

--3
create trigger tg_kurangi_stok on OrderItems_3672
for insert
as
	declare @barang varchar(30)
	declare @amount int
begin
	select @barang = product_id from inserted
	select @amount = amount from inserted
	update Products_3672 set stok = stok - @amount where product_id = @barang
	select p.product_id, name, p.stok from Products_3672 p where product_id = @barang
end

insert into OrderItems_3672(order_id, product_id, amount, purchasing_price, selling_price)
values ('20160305-00001', 'CG-001-IT000002', 9, 160000, 165000)

--4
create trigger tg_update_stok On OrderItems_3672
for update
as
	declare @jumlahOrderLama int
	declare @jumlahOrderBaru int
	declare @amount int
	declare @product varchar(50)
begin
	select @jumlahOrderLama = amount from deleted
	select @jumlahOrderBaru = amount from inserted
	select @product = product_id from inserted
	set @amount = @jumlahOrderBaru - @jumlahOrderLama
	update Products_3672 set stok = stok - @amount
	select p.product_id, p.name, p.stok From Products_3672 p Where product_id = @product
end

update OrderItems_3672 set amount = 15
where order_id = '20160305-00001' AND product_id = 'CG-001-IT000002'

--5
create trigger tg_tambah_stok On OrderItems_3672
for delete 
as
	declare @amount int
	declare @product varchar(50)
begin
	select @product = product_id from deleted
	select @amount = amount from deleted
	update Products_3672 set stok = stok + @amount
	select p.product_id, p.name, p.stok From Products_3672 p Where product_id = @product
end

delete from OrderItems_3672
where order_id = '20160305-00001' AND product_id = 'CG-001-IT000002'

select * from OrderItems_3672 where order_id = '20160305-00001' AND product_id = 'CG-001-IT000002'

--Prak11 INDEX

--dgn index
create unique index idx_products on Products_3672 (name desc);
select * from Products_3672 where name = 'MSI Bio Spray'

--tanpa index
select * from OrderItems_3672 where purchasing_price = 145000

--------------------------------------------------------------------------------------- 

--DATABASE SECURITY
create login ergeape with password ='rgapbro'
create login aldrin with password ='rgapbro'
create login gibran with password ='rgapbro'
create login kuncung with password ='rgapbro'
create login robot with password ='rgapbro'

create user ergeape for login ergeape
create user aldrin for login aldrin
create user gibran for login gibran
create user kuncung for login kuncung
create user robot for login robot

select * from Products_3672

grant select, insert, update, delete on Products_3672 to ergeape
grant select on Customers_3672 to aldrin
grant select on Suppliers_3672 to aldrin
grant select, insert on Orders_3672 to gibran
grant select, insert, update on Orders_3672 to kuncung
grant select, insert, update on OrderItems_3672 to robot

create role bag_pembelian
create role bag_penjualan 
create role bag_gudang

alter role bag_gudang add member ergeape
alter role bag_gudang add member aldrin
alter role bag_penjualan add member gibran
alter role bag_penjualan add member kuncung
alter role bag_pembelian add member robot

grant select, insert, update, delete on Products_3672 to bag_gudang
grant select, insert, update, delete on Customers_3672 to bag_gudang
grant select, insert, update, delete on Suppliers_3672 to bag_gudang

grant select on Products_3672 to bag_pembelian
grant select on Suppliers_3672 to bag_pembelian
grant select, insert, update, delete on Products_3672 to bag_pembelian

grant select on Products_3672 to bag_penjualan
grant select on Customers_3672 to bag_penjualan
grant select, insert, update, delete on Orders_3672 to bag_penjualan
grant select, insert, update, delete on OrderItems_3672 to bag_penjualan

revoke delete on Products_3672 to bag_gudang
revoke delete on Customers_3672 to bag_gudang
revoke delete on Suppliers_3672 to bag_gudang
grant update on Products_3672 to bag_pembelian
grant update on Products_3672 to bag_penjualan

select * from Suppliers_3672

grant select on products_3672 to ergeape
revoke select on products_3672 to ergeape
grant select on products_3672 to gibran

select * from Products_3672
select * from Customers_3672 
select * from Categories_3672
select * from OrderItems_3672
select * from Orders_3672
select * from Suppliers_3672

--horizontal view
create view V_customer
as
select * from Customers_3672 where region_id='WL001'
select * from V_customer

--vertikal view
create view v_customerv
as 
select customer_id, name, address, year_of_birth from Customers_3672
where region_id='WL001'
select * from v_customerv

--view on view
create view V_customer_new
as
select customer_id, name, address, year_of_birth from V_customer

select * from V_customer_new