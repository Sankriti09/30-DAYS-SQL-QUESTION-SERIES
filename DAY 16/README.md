
# DAY 16 | QUSTION 16 |-
❓ What are the total items and amount spent for each member before they became a member?
> ASSUMPTION - A customer can order more than one item just before becoming a member. A customer can order a particular ffod item more than once. Consider all the records as an individual.

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
  The menu table captures the product details i.e., dises information like product_id, dishes name, their price
 
 | product_id  | product_name | price |
 | ----------  | ------------ | ----- |
 | 1	        | sushi | 10|
 | 2	        | curry | 15 |
 | 3	        | ramen | 12 |

 </details>

 ### **3. Members**

 <details><summary>
 View Table
 </summary>
The final members table captures the join_date when a customer_id joined the beta version of the Danny’s Diner loyalty program.
 
 | customer_id | join_date | 
 | ----------- | ---------- |
 | A	        | 2021-01-07  |
 | B	        | 2021-01-09  |

 </details>

### 🎯 APPROACH -
Using CTE ( you can use subqyery)
- Applying Inner Join in all three tables (sales, members, and menu) based on the same column.
- To filter the food items ordered before joining_date, using 'WHERE CLAUSE' in which order_date< join_date
- As a result, the list of all food items ordered before becoming a member was returned,
Now in the main query, calculate the count of all these items and how much money was spent on them by each customer
- To fetch the total items ordered and the total amount by each customer, applying 
sum(price) , count(product_name) on the basis of customer_id

### 💡 INSIGHTS GENERATED -
 1. A customer with id 'A' ordered 2 items and spent 25 to purchase food items.
 2. Customer with id 'B' ordered curry only once and sushi two times hence ordered 3 items by spending 40.

 ![This is an image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/b89bd727-e411-4f0d-bc43-e4a147fc5f1b)



