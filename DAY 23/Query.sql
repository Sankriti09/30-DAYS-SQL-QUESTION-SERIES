-- Day 23 | Question 23

-- 📌Assume you have given the table below-containing information on user transactions for particular products.
-- ❓ Write a query to obtain the year-on-year growth rate for the total spend of each product for each year.
--> Output the year (in ascending order) partitioned by product id, current year's spend, previous year's spend, and year-on-year growth rate 
--(percentage rounded to 2 decimal places).

WITH year_spend AS
(
  SELECT EXTRACT(YEAR FROM transaction_date)
       , PRODUCT_ID
       , spend as curr_year_spend
       , LAG(SPEND) OVER(PARTITION BY PRODUCT_ID ) AS prev_year_spend
   FROM user_transactions
   ORDER BY 2,1
)

SELECT *,
       ROUND((curr_year_spend - prev_year_spend)/prev_year_spend*100::NUMERIC,2)
FROM year_spend;

-- author : Sanskriti_Garg
