
--Day 16 | Question 16

-- ❓What are the total items and amount spent for each member before they became a member?
-- 📍ASSUMPTION - A customer can order more than one item just before becoming a member
WITH orders AS
(
     SELECT s.customer_id
          , s.order_date
          , m.join_date
          , mn.product_name
          , mn.price
     FROM members m 
     INNER JOIN sales s ON m.customer_id = s.customer_id
     INNER JOIN menu mn ON mn.product_id = s.product_id
     WHERE order_date<join_date
)
  
SELECT customer_id 
    , COUNT(product_name)                       AS total_items
    , SUM(price)                                AS total_amount
FROM orders
GROUP BY customer_id
ORDER BY customer_id;

-- AUTHOR : Sanskriti_Garg
