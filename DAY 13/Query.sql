
-- DAY 13 | QUESTION 13

-- ❓Which item was purchased just before the customer became a member?
--📍 ASSUMPTION - A customer can order more than one item just before becoming a member.
WITH ordered_food AS
(
    SELECT s.customer_id
        , s.order_date
        , mn.product_name
        , m.join_date
        , DENSE_RANK() OVER(PARTITION BY m.customer_id ORDER BY s.order_date DESC) AS d_rnk
    FROM sales s 
    INNER JOIN members m 
      ON m.customer_id = s.customer_id
    INNER JOIN menu mn 
      ON mn.product_id = s.product_id
    WHERE s.order_date< m.join_date
)

SELECT customer_id
     , GROUP_CONCAT(product_name) AS Ordered_food
FROM ordered_food
WHERE rnk=1
GROUP BY 1;

-- AUTHOR : Sanskriti_Garg
