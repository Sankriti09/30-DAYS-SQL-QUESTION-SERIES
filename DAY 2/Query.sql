-- day 1

--Tables required to solve the question -
-- 1. Sales 2. Menu

-- What was the first item from the menu purchased by each customer?
SELECT product_name, COUNT(product_id)AS purchased_count
FROM(SELECT s.customer_id,
            s.product_id,
            m.product_name,
            s.order_date,
            DENSE_RANK() over(PARTITION BY customer_id 
            ORDER BY  product_id DESC) AS rnk
      FROM sales s
      JOIN menu m ON s.product_id = m.product_id)a
WHERE a.rnk=1;


-- author : @Sanskriti Garg
