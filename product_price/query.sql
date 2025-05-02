# Write your MySQL query statement below

WITH latest_prices AS (
  SELECT product_id, new_price
  FROM (
    SELECT product_id, new_price, change_date,
           ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY change_date DESC) AS rn
    FROM products
    WHERE change_date <= '2019-08-16'
  ) AS ranked
  WHERE rn = 1
)

SELECT 
  p.product_id,
  COALESCE(lp.new_price, 10) AS price
FROM (SELECT DISTINCT(product_id) FROM products) AS p
LEFT JOIN latest_prices lp ON p.product_id = lp.product_id;