-- dropped previous tables -now use Foreign Key
DROP TABLE sales;
DROP TABLE products;
DROP TABLE customers;

--- customers
CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  full_name TEXT,
  address VARCHAR(255),
  phone VARCHAR(50),
  city VARCHAR(100)
);

--- products
CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  description TEXT,
  price NUMERIC
);

--- sales
CREATE TABLE sales (
  sale_id SERIAL PRIMARY KEY,
  quantity INTEGER,
  product_id INTEGER,
  customer_id INTEGER,
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- customers
INSERT INTO customers (full_name, address, phone, city) VALUES
('John Davis', '123 Main St', '318-555-1001', 'Shreveport'),
('Sarah Smith', '456 Oak Ave', '318-555-1002', 'Bossier City'),
('Michael Brown', '789 Pine Rd', '318-555-1003', 'Shreveport'),
('Emily Johnson', '321 Elm St', '318-555-1004', 'Mooringsport'),
('David Wilson', '654 Maple Dr', '318-555-1005', 'Blanchard');

-- products
INSERT INTO products (description, price) VALUES
('Laptop', 899.99),
('Smartphone', 699.99),
('Headphones', 149.99),
('Keyboard', 79.99),
('Mouse', 49.99);

-- sales
INSERT INTO sales (quantity, product_id, customer_id) VALUES
(1, 1, 1),
(2, 2, 2),
(1, 3, 3),
(3, 4, 4),
(2, 5, 5),
(1, 2, 1),
(4, 1, 2),
(2, 3, 4),
(1, 5, 3),
(3, 2, 5);