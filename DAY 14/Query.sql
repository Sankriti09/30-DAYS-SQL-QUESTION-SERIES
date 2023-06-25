WITH cte AS
(    
     SELECT ename
          , sal
          , deptno
          , ROW_NUMBER() OVER(PARTITION BY deptno ORDER BY sal) as r_n
      FROM employee_data
),

cte1 AS
(
      SELECT *,
            LAST_VALUE(r_n) OVER(PARTITION BY deptno ORDER BY r_n RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)as l_value
      FROM cte
)

SELECT deptno
     , Round(AVG(sal),0) as median_salary
FROM cte1
WHERE r_n BETWEE l_value/2 AND ((l_value/2)+1)   
GROUP BY deptno;
