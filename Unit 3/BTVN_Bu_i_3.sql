-- CREATE TABLE nha_cap_cap (
-- 	ma_nha_cung_cap INT PRIMARY KEY,
-- 	ten_nha_cung_cap VARCHAR(250),
-- 	dia_chi VARCHAR(250),
-- 	phone VARCHAR(11)
-- );
-- 
-- 
-- 
-- INSERT INTO nha_cap_cap (ma_nha_cung_cap,ten_nha_cung_cap,dia_chi,phone)
-- 	VALUES 
-- 	(1,'Công ty TNHH Mediphar USA','Long An','0903850866'),
-- 	(2,'Công ty cổ phần Traphaco (TRA)','Hà Nội','18006612'),
-- 	(3,'Công ty cổ phần dược Hậu Giang (DHG)','Cần Thơ','02923891433'),
-- 	(4,'Công ty cổ phần dược phẩm Hà Tây','Hà Nội','0433522525'),
-- 	(5,'Công ty cổ phần hóa dược phẩm Mekophar','Hồ Chí Minh','0968616076'),
-- 	(6,'Công Ty TNHH Cung ứng Dịch Vụ Học Liệu Y Tế Pasteur','Hà Nội','0968616076'),
-- 	(7,'Công Ty Cp Dược Phẩm Thiết Bị Y Tế Hà Nội - Nhà Thuốc Hapharco','Hà Nội','02436335297'),
-- 	(8,'ông Ty CP Dược Phẩm Yên Bái - Ypharco','Yên Bái','02163852523'),
-- 	(9,'Doanh Nghiệp Tư Nhân Trọng Đức','Quảng Ninh','02033846333'),
-- 	(10,'Công Ty Cổ Phần Dịch Vụ Thương Mại Và Chiết Xuất Cây Dược Liệu TPP','Lâm Đồng','02633852668');
-- 
-- 
-- 
-- CREATE TABLE thuoc (
-- 	ma_thuoc INT PRIMARY KEY,
-- 	ten_thuoc VARCHAR(250),
-- 	don_vi_tin DOUBLE,
-- 	so_luong INT
-- );
-- 
-- 
-- 
-- INSERT INTO thuoc (ma_thuoc,ten_thuoc,don_vi_tin,so_luong)
-- 	VALUES 
-- 	(1,'Nutricep',1600000,100),
-- 	(2,'Aloha',1000000,100),
-- 	(3,'Kunni Cordyceps Premium Extract',750000,100),
-- 	(4,'Megatec Plus',650000,100),
-- 	(5,'Royal Gold',1500000,100),
-- 	(6,'Tenken',1300000,100),
-- 	(7,'Ogaland',1250000,100),
-- 	(8,'Genki dạng viên',2100000,100),
-- 	(9,'Cordycepin',6000000,100),
-- 	(10,'Adenosine',7500000,100);
-- 
-- 
-- CREATE TABLE nhan_vien (
-- 	ma_nhan_vien INT PRIMARY KEY AUTO_INCREMENT,
-- 	ten_nhan_vien VARCHAR(250),
-- 	chuc_vu VARCHAR(250),
-- 	score DOUBLE,
-- 	Salary DOUBLE
-- );



INSERT INTO nhan_vien (ten_nhan_vien,chuc_vu,score,Salary)
	VALUES 
	('Hà','Trưởng Phòng',10,20000000),
	('Mạnh','Quản lý',10,15000000),
	('Thiên','Quản lý',10,15000000),
	('Kôi','Nhân viên',9.5,11000000),
	('Đức','Nhân viên',8.5,11000000),
	('Minh','Nhân viên',10,11000000),
	('Hiền','Nhân viên',9,11000000),
	('Đăng','Nhân viên',8,11000000),
	('Vũ','Nhân viên',9.5,11000000),
	('Thiên','Trưởng Phòng',10,20000000);


SELECT *  FROM  nha_cap_cap
	WHERE dia_chi = 'Hà Nội';

SELECT *  FROM  nha_cap_cap;

SELECT *  FROM  thuoc;

SELECT so_luong, COUNT(so_luong) FROM thuoc GROUP BY so_luong;


Select AVG(score) from nhan_vien;


Select SUM(Salary) from nhan_vien;