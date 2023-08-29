
# DAY 23 | QUESTION 23 |-
❓  Write a query to obtain the year-on-year growth rate for the total spend of each product for each year.
> 📌 Assume you have given the table below-containing information on user transactions for particular products.
- Output the year (in ascending order) partitioned by product id, current year's spending, previous year's spending, and year-on-year growth rate (percentage rounded to 2 decimal places).

 # **:file_folder: DATASET**
   ### **user_transactions**

 <details><summary>
 View Question link from  DataLemur 🐒 (Ace the SQL & Data Interview)
 </summary>
Question link : (https://datalemur.com/questions/yoy-growth-rate)
 </details>

# 🎯 APPROACH -
Using CTE ( you can use subquery)
1. In order to fetch the year spent, use EXTRACT() to extract the year part from the transaction_date
2. To fetch previous year spend, using LAG() to access previous value of spend according to the each product_id
3. Arranging this list based on transaction_date and product
4. In the main query, Calculating Y-on-Y :

-->Y-on-Y Formula : (current_year_spend previous_year_spend)/previous_year_spend*100

# 💡 INSIGHTS GENERATED -
For the product_id '123424', the Y-on-Y growth decreased for the year 2020 and then increased in 2021 and 2022

## LinkedIn Post Attachment -
LinkedIn Day 21 Post link: https://rb.gy/uqlup









