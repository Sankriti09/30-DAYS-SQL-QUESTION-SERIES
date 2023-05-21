
# DAY 9 | QUSTION 9 |-
❓ Which item was the most popular for each customer?
> ASSUMPTION - A customer can order more than one item and their count might be the same.

 This question is taken from @Dany Diner SQL Case Study which is designed by Dany Ma Sir and it is the first case study named Dany Dimer Restaurant.

 # **:file_folder: DATASETS :**
 To solve this problem, using the following two tables -
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

## 🎯 APPROACH -
1. Join both tables (sales and menu) based on the same column( i.e., product-id)
2. first we find the count of each product ordered by each customer
i.e., count(product_id) group by customer_id, product_name.
3. Using dense_rank based on total_count(product) so that we'll get the rank of the most popular( most ordered) item for each customer in the subquery.
4. <p>In the main query, filtering most ordered item by using 'WHERE CLAUSE' in d_rnk<br>till yet we find the most popular items for each customer, but the customer with ID 'C' has ordered all the ordered at the same count.</p>
5. Hence using the group_concat function for making the data more understandable.

### But wait...what is group_conact function?
>Group_concat function -> group the values of multiple rows into the single row that belongs to the same column.

(BEFORE GROUP_CONCAT)     

|id | product |       
|---|---------|
|a  | ramen   |                                             
|b  | sushi   |                                              
|b  | curry   |                                             
|b  | ramen   |
|c  | ramen   |

(AFTER GROUP_CONCAT)

|id | product |       
|---|---------|
|a  | ramen   |                                             
|b  | sushi, curry, ramen  |                                              
|c  | ramen   |

So,it just makes the data more understandable by concatenating them into a column

## 💡 INSIGHTS GENERATED -
- FOR Customer A, the most favourite item is Ramen
- FOR Customer B, popular item is all the three items
- FOR Customer C, its ramen too.

 ![This is an image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/79f5c587-a31f-4afd-8460-6e30c44e08ef)

