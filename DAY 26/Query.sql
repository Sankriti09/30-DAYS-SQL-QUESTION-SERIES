
-- DAY 26 | QUESTION 26|

-- ❓ Return the number of direct and overall reportees for each employee.
-- 📌Direct Reportee - are the reportees who are directly reporting to a person.
-- 📌Overall Reportee - are the reportees who are directly or indirectly reporting to a person.
-- Ex - there are two employees(empid '7' and '8') who are directly reporting to empid '2' but empid '15' and '16' are reporting to empid '7'
-- Hence, the overall reportees for empid 2 will be '4'

WITH RECURSIVE emp_heirarchy AS
(
  SELECT t1.empid, t1.mgrid, 1 AS lvl
  FROM Reportee t1 WHERE mgrid IS NOT NULL
  UNION 
  SELECT c.empid, e.mgrid, e.lvl+1 as lvl
  FROM emp_heirarchy e
  INNER JOIN Reportee c 
    ON e.empid = c.mgrid
),

Overall_emp AS
(
  SELECT DISTINCT r.empid,
  COALESCE(COUNT(e.empid) OVER(PARTITION BY e.mgrid), 0) AS 'OVERALL REPORTEE'
  FROM reportee r
  LEFT JOIN emp_heirarchy e 
    ON r.empid = e.mgrid
),

direct_emp AS
(
  SELECT DISTINCT r1.EmpID,
  COUNT(r2.Empid) OVER(PARTITION BY r1.empid) AS`Direct Reportee`
  FROM Reportee r1
  LEFT JOIN REPORTEE r2  
    ON r1.empid = r2.mgrid 
)

SELECT d.empid,`direct reportee`, `overall reportee`
FROM overall_emp o 
INNER JOIN direct_emp d 
  ON o.empid = d.empid
ORDER BY 1;

-- author : Sanskriti_Garg
