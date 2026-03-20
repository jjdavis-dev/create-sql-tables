-- customers table
CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  full_name TEXT,
  address VARCHAR(255),
  phone VARCHAR(50),
  city VARCHAR(100)
);

--- products table
CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  description TEXT,
  price NUMERIC
);

--- sales table
CREATE TABLE sales (
  sale_id SERIAL PRIMARY KEY,
  quantity INTEGER,
  product_id INTEGER,
  customer_id INTEGER
);