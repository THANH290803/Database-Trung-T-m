	-- Bài 2: Lấy ra tên những người có mức lương cao hơn quản lý của họ
	CREATE TABLE IF NOT EXISTS Employee(
		id INT PRIMARY KEY AUTO_INCREMENT,
		NAME VARCHAR(50),
		salary INT,
		managerId int
	);
	
	INSERT INTO employee
		(NAME, salary, managerId)
	VALUES
		('Joe', 70000, 3),
		('Henrry', 80000, 4),
		('Sam', 60000,NULL),
		('Max', 90000,NULL);
		
	SELECT a.NAME FROM employee a, employee b
	WHERE a.managerId = b.id AND a.salary > b.salary