
-- DAY 11 | QUESTION 11|

--  Did we ship at least one box of ‘After Nines’ to ‘New Zealand’ 
on all the months?
SELECT EXTRACT(MONTH FROM s.SaleDate) as 'Month',
       COUNT(pr.PID) AS 'Boxes'
FROM products pr
INNER JOIN sales s
  ON pr.PID = s.PID
INNER JOIN geo g
  ON g.GeoID = s.GeoID
WHERE pr.Product = 'After Nines' AND g.Geo = 'New Zealand'
GROUP BY 1
ORDER BY 1;

-- author : Sanskriti_Garg
