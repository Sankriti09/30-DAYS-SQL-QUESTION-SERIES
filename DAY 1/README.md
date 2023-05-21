
# DAY 1 | QUESTION 1 | -
❓What was the first item from the menu purchased by each customer?
> Assumption - A customer can purchase more than one item on the same date as a first purchase.
If the customer has more than one order on the same day, then select the first ordered_item alphabetically.

 # **:file_folder: DATASETS**
 Danny has shared with you 3 key datasets for this case study:
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
- Join both tables (menu and sales) based on the same column present in them (i.e., product_id)
- Add a dense_rank() to fetch the results of each customer according to order_date and product_name.
There is customer A, who ordered two items as a first purchase.
- in the main query, filtering out the customers who have a rank =1 with their ordered_item and order_date

### 💡 INSIGHTS GENERATED -
 1. Both customer with id A and B ordered their first dish as **Curry**
 2. Customer with Id 'C' ordered **Ramen** as the first purchase from the restaurant.
 


