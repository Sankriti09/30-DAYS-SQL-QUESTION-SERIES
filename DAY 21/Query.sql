
-- Day 21 | Question 21

-- ❓ Write an SQL query to find all dates and IDs with higher temperatures compared to their previous dates (yesterday).
WITH temperature AS
(
  SELECT id
       , recordDate
       , temperature
       , COALESCE(LAG(temperature) OVER(ORDER BY recordDate),temperature) AS previous_temperature
  FROM weather
)

SELECT id, recordDate
FROM temperature
WHERE temperature > previous_temperature;

-- author : Sanskriti_Garg
