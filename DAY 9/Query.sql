
-- DAY 09

-- ❓Which item was the most popular for each customer?
SELECT customer_id, 
       GROUP_CONACT(product_name) as MOST_POPULAR_PRODUCT
FROM(SELECT s.customer_id
          , m.product_name
          , COUNT(s.product_id) as highest_ordered_product
          , DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY COUNT(s.product_id) DESC) as rnk
     FROM sales s
     INNER JOIN menu m 
        ON s.product_id = m.product_id
     GROUP BY 1,2
     )a
WHERE rnk=1
GROUP BY 1;



-- author : @Sanskriti_Garg
