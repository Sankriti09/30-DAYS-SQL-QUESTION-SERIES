-- Day 15 | Question 15

-- ❓ Write a query to return for each user the days elapsed between the last action and the second-to-last action, in ascending order by user ID.
--📍 ASSUMPTION -
-->Time elapsed - date difference between two dates of last action and second-last action
-->A user's action can only be one time, so treat the first action as the last

WITH user_dates AS
(
  SELECT user_id, action, action_date,
          DENSE_RANK() OVER(PARTITION BY user_id ORDER BY action_date DESC) AS d_rnk
  FROM users
),
  
dates AS
(
  SELECT user_id, EXTRACT(DAY FROM action_date) AS DATE,
         LEAD(EXTRACT(DAY FROM action_date)) OVER(PARTITION BY user_id) AS NEXT_DATE
  FROM user_dates
  WHERE d_rnk IN(1,2)
),

next_dates as
(
  SELECT *,
         ROW_NUMBER() OVER(PARTITION BY user_id ORDER BY NEXT_DATE DESC) AS r_n
  FROM dates
)

SELECT user_id, (date- next_date) AS DAYS_ELAPSED
FROM next_date
WHERE r_n =1
GROUP BY 1;


-- author : Sanskriti_Garg
