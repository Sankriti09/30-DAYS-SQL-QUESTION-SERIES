
-- DAY 29 | QUESTION 29|

-- You are given a list of numbers representing how many emails each Microsoft Outlook user has in their inbox.
-- Before the Product Management team can work on features related to inbox zero or bulk-deleting email, they want to know the mean, median, and mode for the number of emails.
-- ❓Output the median, median, and mode (in this order). Round the mean to the closest integer and assume that there are no ties for mode

WITH email_mean as
(
    SELECT user_id, email_count,
           ROUND(AVG(email_count) OVER()::NUMERIC,0) AS mean
    FROM inbox_stats
 ),

email_mode AS
(
  SELECT email_count,
         COUNT(*) as total_count
  FROM inbox_stats
  GROUP BY email_count
  ORDER BY total_count DESC
  LIMIT 1
),

email_med AS
(
  SELECT email_count,r_n,
         LAST_VALUE(r_n) OVER(ORDER BY r_n 
  ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) 
  as l_value
  FROM (SELECT email_count,
               ROW_NUMBER() OVER(ORDER BY EMAIL_COUNT) AS r_n
        FROM inbox_stats)a
),

email_median AS
(
  SELECT ROUND(AVG(email_count),0) AS median
  FROM email_med
  WHERE r_n BETWEEN l_value/2 and ((l_value/2)+1)
)

SELECT DISTINCT mean,
       m.email_count AS mode,
       median
FROM email_mode m, email_mean me, email_median md;

-- author : Sanskriti_Garg
