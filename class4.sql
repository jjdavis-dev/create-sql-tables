-- Task A1
-- increase quantity by 10 for one sale
UPDATE sales
SET quantity = quantity + 10
WHERE sale_id = 1;

-- Task A2
-- increase all product prices by 15%
UPDATE products
SET price = price * 1.15;

-- Task B1
-- delete one specific sale
DELETE FROM sales
WHERE sale_id = 2;

-- Task B2
-- delete all sales where quantity is 0
DELETE FROM sales
WHERE quantity = 0;