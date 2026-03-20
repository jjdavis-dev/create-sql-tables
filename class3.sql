-- inventory check
SELECT * FROM products;

-- price filtering
SELECT * FROM products
WHERE price BETWEEN 20 AND 100;

-- sales summary
SELECT
  COUNT(*) AS total_sales,
  SUM(quantity) AS total_quantity_sold,
  AVG(quantity) AS avg_quantity_per_sale
FROM sales;

-- customer insights
SELECT
  customer_id,
  COUNT(*) AS total_sales
FROM sales
GROUP BY customer_id;