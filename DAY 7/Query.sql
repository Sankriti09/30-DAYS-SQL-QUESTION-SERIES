
--day 7

--❓ Display all the employees who are getting some commission in thesales department where the employees have joined only on weekdays.
SELECT ename, comm, dname, day
FROM(SELECT ename, comm, d.dname,
            WEEKDAY(HireDate) AS Day
     FROM employee_data e
     INNER JOIN department_data d ON e.deptno = d.deptno
     WHERE d.dname IN('Sales') AND e.comm>0)a
WHERE a.Day BETWEEN 0 AND 4;




--AUTHOR : @Sanskriti_garg
