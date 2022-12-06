-- 	Bài 3: Lấy ra danh sách email nào trùng lặp
	CREATE TABLE IF NOT EXISTS Person(
	id INT PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(50)
);

	INSERT INTO person
	VALUES
		(1, 'a@b.com'),
		(2, 'c@d.com'),
		(3, 'a@b.com');
	
	SELECT email FROM person
	GROUP BY email
	HAVING COUNT(email) > 1