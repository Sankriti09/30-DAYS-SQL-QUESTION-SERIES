-- day 1

--Tables required to solve the question -
-- 1. Sales 2. Menu

-- What was the first item from the menu purchased by each customer?
SELECT customer_id, order_date, product_name as ordered_item
FROM(SELECT s.customer_id,s.order_date, m.product_name,
            DENSE_RANK() OVER( PARTITION BY customer_id ORDER BY order_date, product_name ASC) AS rnk
     FROM sales s
     JOIN menu m ON m.product_id = s.product_id)a
WHERE a.rnk=1
GROUP BY 1;



-- author 
SANSKRITI GARG
