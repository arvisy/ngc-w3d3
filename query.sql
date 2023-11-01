-- ddl database transaction
CREATE DATABASE transaction;

-- ddl table products
CREATE TABLE IF NOT EXISTS products (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    stock INT(10) CHECK (stock >= 0),
    description TEXT,
    price INT(10) CHECK (price >= 0)
);

-- ddl table tags
CREATE TABLE IF NOT EXISTS tags (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- ddl table product_tags
CREATE TABLE IF NOT EXISTS product_tags (
	id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    tags_id INT,
    FOREIGN KEY(product_id) REFERENCES products(id),
    FOREIGN KEY(tags_id) REFERENCES tags(id)
);

-- dml insert tags
INSERT INTO tags (name)
VALUES
	('kulit'),
    ('suede'),
    ('satin'),
    ('cotton'),
    ('small'),
    ('medium'),
    ('large');

-- dml insert products
INSERT INTO products (name, stock, description, price)
VALUES 
	('Baju', 10, NULL, 9000),
    ('Celana', 20, NULL, 12000),
    ('Topi', 30, NULL, 5000),
    ('Sepatu', 40, NULL, 6000);

-- dml insert product_tags 
INSERT INTO product_tags (product_id, tags_id)
VALUES
	(1, 1),
    (1, 6),
    (2, 2),
    (2, 5),
    (3, 4),
    (3, 1),
    (4, 2),
    (4, 7);
    

