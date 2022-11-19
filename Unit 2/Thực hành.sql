-- CREATE TABLE student (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	first_name VARCHAR(50),
-- 	last_name VARCHAR(50),
-- 	email VARCHAR(50),
-- 	address VARCHAR(50),
-- 	phone VARCHAR(50)
-- );

INSERT INTO student (id, first_name, last_name, email, address, phone)
VALUES
    (1, 'Nguyễn', 'Trang', 'nguyentrang16@gmail.com', '36 Hàng Bài, HN', '0888.669.112'),
    (2, 'Nguyễn', 'Ngọc', 'nguyenngoc19@gmail.com', '41 Phú Đô, HN', '0613.118.256'),
    (3, 'Phạm', 'Thanh', 'pahmthanh48@gmail.com', '19 Dương Quảng Hàm, HCM', '0988.115.268'),
    (4, 'Trần', 'Thanh', 'tranthanh01@gmail.com', '447 Cầu Giấy, HN', '0988.116.267'),
    (5, 'Như', 'Ngọc', 'nhungoc89@gmail.com', '21 Dương Quảng Hàm, HCM', '0653.118.171');
    
SELECT * FROM student;

SELECT CONCAT(first_name,last_name) AS 'Full_Name' FROM student;

SET @last_name = 'Thanh';
SELECT * FROM student WHERE last_name = @last_name;

SET @last_name = 'Ngọc'
SELECT * FROM student WHERE last_name = @last_name;

SET @last_name = 'Trang'
SELECT * FROM student WHERE last_name = @last_name;