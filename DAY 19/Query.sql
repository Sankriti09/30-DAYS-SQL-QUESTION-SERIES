
-- DAY 18 | Question 18

-- ❓Calculate the conversion rate of Paid Order users from the number of users who visited.
📍 Assumption -
-->PAID ORDERS users- number of users who completed the transaction. It is possible a user can never visit.
-->A user who placed the order completes the transaction
--> Multiply the rate by 100.0 to get better and more readable output
SELECT Round(100.0*(COUNT(DISTINCT user_id)/(SELECT count(user_id) FROM user_transaction WHERE visit IS NOT NULL)),1)      AS conversion_rate
FROM user_transaction
WHERE make_order = 'True';

-- AUTHOR : Sanskriti_Garg
