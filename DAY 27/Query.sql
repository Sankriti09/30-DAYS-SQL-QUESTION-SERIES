
-- DAY 27 | QUESTION 27|

-- ❓ 𝐈𝐟 𝐞𝐚𝐜𝐡 $1 𝐬𝐩𝐞𝐧𝐭 𝐞𝐪𝐮𝐚𝐭𝐞𝐬 𝐭𝐨 10 𝐩𝐨𝐢𝐧𝐭𝐬 𝐚𝐧𝐝 𝐬𝐮𝐬𝐡𝐢 𝐡𝐚𝐬 𝐚 2𝐱 𝐩𝐨𝐢𝐧𝐭𝐬 𝐦𝐮𝐥𝐭𝐢𝐩𝐥𝐢𝐞𝐫, 𝐡𝐨𝐰 𝐦𝐚𝐧𝐲 𝐩𝐨𝐢𝐧𝐭𝐬 𝐰𝐨𝐮𝐥𝐝 𝐞𝐚𝐜𝐡 𝐜𝐮𝐬𝐭𝐨𝐦𝐞𝐫 𝐡𝐚𝐯𝐞?
-- 📌Explanation-
--> If the customer is ordering sushi and its price is 20, then the point for sushi will be 20 *10 = 200
--> If the product is either ramen or curry then their total points will be price*10, then calculate the total_points for each customer.
WITH points AS
(
  SELECT *,
        (CASE WHEN product_name = 'sushi' THEN price*20 
            ELSE price*10
        END) as total_points
  FROM menu
)

SELECT DISTINCT s.customer_id, 
       SUM(p.total_points) OVER(PARTITION BY s.customer_id) as Total_points
FROM sales s 
INNER JOIN points p
  ON p.product_id = s.product_id
ORDER BY 1;

-- author: Sanskriti_Garg
