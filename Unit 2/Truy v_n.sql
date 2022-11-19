unit2-- CREATE TABLE revenue (
-- 	ID INT PRIMARY KEY, -- AUTO_INCREMENT
-- 	RECORD_DATE DATE,
-- 	AMOUNT INT
-- );
-- 
-- INSERT INTO revenue
-- 	(ID, RECORD_DATE, AMOUNT)
-- 	VALUES
-- 	(1, '2020-03-02', 635000),
-- 	(2, '2020-03-03', 136000),
-- 	(3, '2020-03-04', 1098000),
-- 	(4, '2020-03-05', 782000),
-- 	(5, '2020-03-06', 891000),
-- 	(6, '2020-03-07', 632000),
-- 	(7, '2020-03-08', 633000),
-- 	(8, '2020-03-09', 789000),
-- 	(9, '2020-03-10', 100100),
-- 	(10, '2020-03-11', 210000);
-- 
-- 	
-- SELECT * FROM revenue;
-- 
-- SELECT * FROM revenue WHERE AMOUNT > 500000;
-- 
-- SELECT * FROM revenue a, revenue b;
-- 
-- SELECT * FROM revenue a, revenue b
-- WHERE DATEDIFF(a.record_date, b.record_date) = 1 AND a.amount > b.amount
-- 
-- SELECT AMOUNT % 100000 FROM revenue;



INSERT INTO student (id, first_name, last_name, email, address, phone)
VALUES
    (1, 'Nguyễn', 'Trang', 'nguyentrang16@gmail.com', '36 Hàng Bài, HN', '0888.669.112'),
    (2, 'Nguyễn', 'Ngọc', 'nguyenngoc19@gmail.com', '41 Phú Đô, HN', '0613.118.256'),
    (3, 'Phạm', 'Thanh', 'pahmthanh48@gmail.com', '19 Dương Quảng Hàm, HCM', '0988.115.268'),
    (4, 'Trần', 'Thanh', 'tranthanh01@gmail.com', '447 Cầu Giấy, HN', '0988.116.267'),
    (5, 'Như', 'Ngọc', 'nhungoc89@gmail.com', '21 Dương Quảng Hàm, HCM', '0653.118.171');
