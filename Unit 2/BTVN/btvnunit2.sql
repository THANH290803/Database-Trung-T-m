-- CREATE TABLE nhan_vien(
-- 	ID INT PRIMARY KEY AUTO_INCREMENT,
-- 	NAME VARCHAR(50),
-- 	Ngay_Bat_Dau DATE,
-- 	So_Chiec INT
-- );

-- INSERT INTO nhan_vien(NAME,Ngay_Bat_Dau,So_Chiec)
-- 	VALUES
-- 	('Long Hoàng','2003-01-24',150),
-- 	('Đặng Trần','2007-05-27',300),
-- 	('Đức Hà','1999-05-12',256),
-- 	('Nam Phương','1989-07-16',140),
-- 	('Thanh Lam','2007-04-06',120),
-- 	('Hạnh Trần','1999-06-15',160),
-- 	('Minh Hà','1897-12-26',230);

-- SELECT CONCAT(ID,': ',NAME,', ',Ngay_Bat_Dau) AS thong_tin FROM nhan_vien

CREATE TABLE employee (
	employee_id INT PRIMARY KEY,
	employee_name VARCHAR(50),
	salary INT 
);

INSERT INTO employee
	(employee_id,employee_name,salary)
	VALUES 
	(22,'Minh',250000),
	(44,'Hà',300000),
	(12,'Phương',200000),
	(35,'DC',500000);

UPDATE employee
SET salary = salary*2;


CREATE TABLE sinh_vien (
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	birth_day DATE
);

INSERT INTO sinh_vien
	(first_name,last_name,birth_day)
	VALUES 
	('Vũ Thi','Thủy','1999-03-30'),
	('Hà Thi','Huyền','1997-01-19'),
	('Nguyen Van','C','2006-02-24'),
	('Nguyen Van','B','1998-07-15'),
	('Nguyen Van','C','1995-12-28');

SELECT DATEDIFF(NOW(),birth_day)
FROM sinh_vien;