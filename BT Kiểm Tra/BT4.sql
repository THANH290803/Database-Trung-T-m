-- Bài 4: Lấy ra danh sách những khách hàng chưa bào giờ order
		CREATE TABLE IF NOT EXISTS customers(
		id INT PRIMARY KEY,
		name VARCHAR(255)
	);
	
	INSERT INTO customers
	(id, name)
	VALUES
		(1, 'Joe'),
		(2, 'Henry'),
		(3, 'Sam'),
		(4, 'Max');
			
	CREATE TABLE IF NOT EXISTS orders(
		id INT PRIMARY KEY,
		customer_id INT
	);
	
	INSERT INTO orders
	(id, customer_id)
	VALUES
		(1, 3),
		(2, 1);
	
	SELECT customers.* FROM customers
	WHERE customers.id NOT IN (	
		SELECT customers.id FROM customers
		JOIN orders
		ON customers.id = orders.customer_id
	);