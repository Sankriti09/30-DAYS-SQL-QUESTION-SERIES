#  DAY 2 | QUESTION 2 | -
❓ What is the most purchased item on the menu and how many times was it purchased by all customers?
> Assumption - A customer can order the product multiple times on the same day.

 # **:file_folder: DATASETS**
 These two tables will help us to solve this above question :
   ### **1. SALES**

 <details><summary>
 View Table
 </summary>
The sales table captures all customer_id level purchases with an corresponding order_date and product_id information for when and what menu items were ordered.

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

### 🎯 APPROACH -
Solving this question using Subquery(you can use CTE)
- Join both the tables(sales and menu) based on the same column(product_id)
- To fetch the product that is purchased the most, add the dense_rank() according to product_id by each customer.
This will give a rank through which we can conclude which product was purchased the most.
- In the main query, filtering the rank =1 as it will the most purchased item
- At the end, to count how many times the product has been purchased add count() according to the product

### 💡 INSIGHTS GENERATED -
Ramen is the most purchased item from the menu and has been purchased 8 times.
 
