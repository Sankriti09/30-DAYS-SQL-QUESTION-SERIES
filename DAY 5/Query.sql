
-- DAY 5


-- ❓Output the impressions and clicks on new columns based on the date for 1st October 2021 and 2nd October 2021
SELECT DATE,
       SUM(CASE WHEN activity_code = 'Impressions' then value end)  AS Impressions,
       SUM(CASE WHEN activity_code = 'Clicks' then value end)       AS Clicks
FROM DATA1
WHERE DATE BETWEEN '01-10-2021' AND '02-10-2021'
GROUP BY 1
ORDER BY 1;



-- author : @Sanskriti_garg
