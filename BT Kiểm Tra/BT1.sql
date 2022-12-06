CREATE TABLE categories(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	category_code VARCHAR(255) NOT NULL,
	category_name VARCHAR(255) NOT NULL,
	created_date DATE NOT NULL,
	updated_date DATE NOT NULL
);

	INSERT INTO categories 
	(category_code, category_name, created_date, updated_date)
	VALUES
    ('A00', 'áo', '2022-12-06', '2022-12-06'),
    ('A01', 'Quần ', '2022-10-01', '2022-11-06'),
    ('A15', 'Phụ kiện quần áo', '2021-10-21', '2023-01-06'),
    ('A71', 'Mỹ phẩm', '2022-09-21', '2023-01-11'),
    ('A74', 'Đồ trang sức', '2022-11-29', '2022-12-06'),
	('A33', 'Giày dép', '2021-12-06', '2022-12-06'),
    ('A21', 'Sách', '2019-10-30', '2022-12-05'),
    ('A09', 'Đồ làm bếp', '2021-08-22', '2023-01-15'),
    ('A77', 'Đồ điện tử', '2022-09-21', '2023-05-11'),
    ('A95', 'Giường tủ', '2022-11-29', '2022-04-16');
    
	CREATE TABLE products(
		id BIGINT PRIMARY KEY AUTO_INCREMENT,
		product_code VARCHAR(255) NOT NULL,
		product_name VARCHAR(255) NOT NULL,
		image VARCHAR(255),
		description VARCHAR(255),
		price FLOAT,
		quantity INT,
		country VARCHAR(255),
		status ENUM ('NULL', 'NEW', 'NOT_NEW') DEFAULT 'NULL' NOT NULL,
		created_date DATE NOT NULL,
		updated_date DATE NOT NULL
	);
	
		CREATE TABLE orders(
		id INT PRIMARY KEY AUTO_INCREMENT,
		quantity INT NOT NULL,
		price FLOAT NOT NULL,
		paid_date DATE NOT NULL,
		created_date DATE,
		updated_date DATE
	);
	
	
		CREATE TABLE order_products(
		order_id INT, FOREIGN KEY (order_id) REFERENCES orders (id),
		products_id BIGINT, FOREIGN KEY (products_id) REFERENCES products (id)
	);
	
	
	-- Hiển thị danh sách sản phẩm gồm: product_code, product_name, country, category_name
	
	SELECT products.product_code AS 'Mã SP' , products.product_name AS 'Tên SP' , products.country AS 'Quốc Gia' ,   categories.category_name AS 'Thể Loại'
	FROM  products join categories  ON products.id = categories.id;
	
	
	-- Tìm ra những sản phẩm có chứa kĩ tự ‘g’
	
	SELECT * FROM products WHERE product_name LIKE N'%g%';
	
	-- Tìm ra những sản phẩm có số lượng lớn hơn 20
	
	SELECT * FROM products WHERE quantity > 20;
	
	
	-- Thống kê số lượng đơn hàng theo ngày
	
	SELECT orders.paid_date AS'Date' , COUNT(orders.id) AS "Số Đơn"
	FROM orders 
	GROUP by orders.paid_date;
	
	

   
    
