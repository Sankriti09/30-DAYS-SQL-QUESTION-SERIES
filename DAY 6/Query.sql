
-- DAY 6

-- ❓ Display the second maximum salary in each department.
SELECT deptno, dname,sal AS Second_maximum_salary
FROM(SELECT d.deptno, d.dname,e.empno, ename,job,sal,
            DENSE_RANK() OVER(PARTITION BY e.deptno ORDER BY sal desc)AS rnk
     FROM employee_data AS e
     INNER JOIN department_data AS d
         ON e.deptno = d.deptno
     )a
WHERE a.rnk=2
GROUP BY 1;




-- author : @Sanskriti_Garg
