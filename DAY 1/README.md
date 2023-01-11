
# DAY 1 | QUESTION 1 | -
❓What was the first item from the menu purchased by each customer?
> Assumption - A customer can purchase more than one item on the same date as a first purchase.
If the customer has more than one order on the same day, then select the first ordered_item alphabetically.

### 🎯APPROACH -
Solving this question using Subquery(you can use CTE)
- Join both tables (menu and sales) based on the same column present in them (i.e., product_id)
- Add a dense_rank() to fetch the results of each customer according to order_date and product_name.
There is customer A, who ordered two items as a first purchase.
- in the main query, filtering out the customers who have a rank =1 with their ordered_item and order_date
