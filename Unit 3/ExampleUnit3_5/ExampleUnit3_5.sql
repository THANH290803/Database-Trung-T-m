-- CREATE TABLE account (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	username VARCHAR(50),
-- 	password VARCHAR(50),
-- 	full_name VARCHAR(50)
-- );
-- 
-- CREATE TABLE address (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	street VARCHAR(50),
-- 	city VARCHAR(50)
-- );

CREATE TABLE account_address (
	account_id INT, address_id INT,
	FOREIGN KEY (account_id) REFERENCES account(id),
	FOREIGN KEY (address_id) REFERENCES address(id)
);