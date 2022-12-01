CREATE TABLE Blog(
	id INT PRIMARY KEY,
	title VARCHAR(255),
	DESCRIPTION VARCHAR(255),
	create_at DATE
);

CREATE TABLE user(
	id INT PRIMARY KEY, 
	name VARCHAR(255),
	phone VARCHAR(255),
	email VARCHAR(255),
	AccountBanking_ID INT UNIQUE,
	 FOREIGN KEY (AccountBanking_ID) REFERENCES AccountBanking (id),
	TransactionHistory_ID INT,
	 FOREIGN KEY (TransactionHistory_ID) REFERENCES TransactionHistory (id) 
);

CREATE TABLE user_Course (
	user_ID INT,
	 FOREIGN KEY (user_ID) REFERENCES user (id),
	Course_ID INT,
	 FOREIGN KEY (Course_ID) REFERENCES Course (id) 
);

CREATE TABLE Course(
	id INT PRIMARY KEY,
	name VARCHAR(255),
	time_line VARCHAR(255),
	description VARCHAR(255),
	price FLOAT,
	type_course VARCHAR(255),
	vote INT
);

CREATE TABLE Role(
	id INT PRIMARY KEY,
	name VARCHAR(255),
	user_ID INT,
	 FOREIGN KEY (user_ID) REFERENCES user (id)
);

CREATE TABLE OpeningSchedule_Course(
	Course_ID INT,
	 FOREIGN KEY (Course_ID) REFERENCES Course (id),
	OpeningSchedule_ID INT,
	 FOREIGN KEY (OpeningSchedule_ID) REFERENCES OpeningSchedule (id) 
);
	

CREATE TABLE OpeningSchedule(
	id INT PRIMARY KEY,
	start_date DATE,
	description VARCHAR(255),
	address VARCHAR(255),
	study_day DATE,
	study_time TIME
);

CREATE TABLE TransactionHistory(
	id INT PRIMARY KEY,
	registration_date DATE,
	status VARCHAR(255)
);

CREATE TABLE AccountBanking(
	id INT PRIMARY KEY,
	name_bank VARCHAR(255),
	account_num VARCHAR(255)
);
