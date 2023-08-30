
# DAY 20 | QUESTION 20 |-
❓   𝐈𝐟 𝐞𝐚𝐜𝐡 $1 𝐬𝐩𝐞𝐧𝐭 𝐞𝐪𝐮𝐚𝐭𝐞𝐬 𝐭𝐨 10 𝐩𝐨𝐢𝐧𝐭𝐬 𝐚𝐧𝐝 𝐬𝐮𝐬𝐡𝐢 𝐡𝐚𝐬 𝐚 2𝐱 𝐩𝐨𝐢𝐧𝐭𝐬 𝐦𝐮𝐥𝐭𝐢𝐩𝐥𝐢𝐞𝐫, 𝐡𝐨𝐰 𝐦𝐚𝐧𝐲 𝐩𝐨𝐢𝐧𝐭𝐬 𝐰𝐨𝐮𝐥𝐝 𝐞𝐚𝐜𝐡 𝐜𝐮𝐬𝐭𝐨𝐦𝐞𝐫 𝐡𝐚𝐯𝐞?
> 📌 Explanation-
- If the customer is ordering sushi and its price is 20, then the point for sushi will be 20 *10 = 200
- If the product is either ramen or curry then their total points will be price*10, then calculate the total_points for each customer.


 # **:file_folder: DATASET**
 To solve this problem, use the following two tables -
   ### **1. SALES**

  <details><summary>
 View Table
 </summary>
The sales table captures all customer_id level purchases with a corresponding order_date and product_id information for when and what menu items were ordered.

 | customer_id  | order_date | product_id |
 | -----------  | ---------- | ---------- |
 | A	          | 2021-01-01 | 1 |
 | A	          | 2021-01-01 | 2 |
 | A	          | 2021-01-07 | 2 |
 | A	          | 2021-01-10 | 3 |
 | A	          | 2021-01-11 | 3 |
 | A	          | 2021-01-11 | 3 |
 | B	          | 2021-01-01 | 2 |
 | B	          | 2021-01-02 | 2 |
 | B	          | 2021-01-04 | 1 |
 | B          	| 2021-01-11 | 1 |
 | B	          | 2021-01-16 | 3 |
 | B	          | 2021-02-01 | 3 |
 | C	          | 2021-01-01 | 3 |
 | C	          | 2021-01-01 | 3 |
 | C          	| 2021-01-07 | 3 |

 </details>
 
 ### **2. MENU**

 <details><summary>
 View Table
 </summary>
 The final members table captures the product i.e., dises information like product_id, dishes name, their price
 
 | product_id  | product_name | price |
 | ----------  | ------------ | ----- |
 | 1	        | sushi | 10|
 | 2	        | curry | 15 |
 | 3	        | ramen | 12 |

 </details>

# 🎯 APPROACH -
Using CTE, you can use a subquery
1. In the CTE, use a case statement to generate the points for each product from the menu table.
2. Now we'll get the list of the points for each product, in the main query joining the CTE and sales table based on the same column(i.e., product_id)
3. But in order to calculate the total points for each customer,
using SUM() as a window function on the basis of each customer_id

# 💡 INSIGHTS GENERATED -
Customer with ID 'B' has the highest total points with 940

![image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/d8167954-d5cb-4a25-b099-4455bdba9c6b)





