
# DAY 10 | QUSTION 10 |-
❓ Which item was purchased first by the customer after they became a member?
> ASSUMPTION - A customer can order the item on the joining date as well, assuming the order took place after becoming a member.

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
1. Applying Inner Join in all three tables(sales, menu, and members) based on the same columns.
2. To get the first item purchased after becoming a member, first we need to filter the list of customers who order after becoming a member using 'WHERE CLAUSE'
i.e., where s.order_date>= m.join_date
3. Now, we have a list of customers who ordered items after becoming members with their respective orders
4. applying min(order_date) according to each customer. As a result, gets the first order after becoming a member.

## 💡 INSIGHTS GENERATED -
- Customer with id 'A' ordered curry as the first item and the customer with id 'B' ordered 'sushi' as the first item

 ![This is an image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/ca1a397a-1ade-4463-b8b1-8bbc0f31cb1f)

