
-- DAY 09

-- ❓ Which item was purchased first by the customer after they became a member?
-- ASSUMPTION - A customer can order the item on the joining date as well, assuming the order took place after becoming a member.
SELECT a.customer_id
     , a.product_name
FROM(SELECT m.customer_id
          , mn.product_name
          , MIN(s.order_date) AS Order_date
     FROM members m
     JOIN sales s ON m.customer_id = s.customer_id
     JOIN menu mn ON s.product_id = mn.product_id 
     WHERE s.order_date>=m.join_date
     GROUP BY customer_id
     )a
ORDER BY a.customer_id;


-- author : @Sanskriti_Garg
