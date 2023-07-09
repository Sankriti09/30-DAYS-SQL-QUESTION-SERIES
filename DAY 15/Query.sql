-- Day 15 | Question 15

-- ❓write a query to fetch the number of users who purchased products on multiple days
--📍 ASSUMPTION - A user can buy multiple products on the same day.

WITH order_dates AS 
(
    SELECT *,
           DENSE_RANK() OVER(PARTITION BY USER_ID ORDER BY TRANSACTION_DATE ASC) AS D_RNK
    FROM TRANSACTS
)

SELECT COUNT(DISTINCT USER_ID) AS TOTAL_USERS
FROM order_dates 
WHERE D_RNK =2;


-- author : Sanskriti_Garg
