
-- DAY 18 | Question 18

-- ❓Display the employees who are earning the same salary in the table.
SELECT e.empno
     , e.ename
     , e.job
     , e.sal
FROM EMPLOYEE_DATA e
INNER JOIN EMPLOYEE_DATA d ON e.sal = d.sal 
WHERE e.empno<>d.empno
ORDER BY 1;
