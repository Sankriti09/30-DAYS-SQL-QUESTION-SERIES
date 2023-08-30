
-- DAY 28 | QUESTION 28|

-- ❓ Find the top 5 states with the most 5-star businesses.
-- Output the state name along with the number of 5-star businesses and order records by the number of 5-star businesses in descending order.
-- 📌Explanation-
--> In case there are ties in the number of businesses, return all the unique states.
--> If two states have the same result, sort them in alphabetical order.
WITH 5_star_business AS
(
  SELECT DISTINCT state,
         COUNT(business_id) OVER(PARTITION BY state) AS n_businesses
  FROM yelp_business
  WHERE stars = 5
),

business_rank AS
(
  SELECT *,
         RANK() OVER(ORDER BY n_businesses DESC) AS rnk
  FROM 5_star_business
)

SELECT state, n_businesses
FROM business_rank
WHERE rnk<=5
ORDER BY 2 DESC, 1;

-- author : Sanskriti_Garg
