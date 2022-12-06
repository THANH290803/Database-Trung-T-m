CREATE TABLE users(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	gender ENUM ('NULL', 'MALE', 'FEMALE') DEFAULT 'NULL',
	email VARCHAR(255) NOT NULL,
	birth_day DATE,
	avartar VARCHAR(255),
	phone VARCHAR(255),
	address VARCHAR(255),
	city VARCHAR(255),
	country VARCHAR(255),
	code_active VARCHAR(255) NOT NULL,
	status ENUM ('NULL', 'ENABLE', 'DISABLE') DEFAULT 'NULL' NOT NULL,
	created_date DATE NOT NULL,
	updated_date DATE NOT NULL
);

CREATE TABLE roles(
	id INT PRIMARY KEY AUTO_INCREMENT,
	role_name VARCHAR(255),
	created_date DATE NOT NULL,
	updated_date DATE NOT NULL
);