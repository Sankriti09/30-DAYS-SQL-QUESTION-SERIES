--- DAY 4


-- ❓Display all the employees who are getting more than the average salaries of all the employees. 
SELECT ename, job, sal
FROM(SELECT ename, 
            job,
	    sal,
	    FLOOR(AVG(sal) OVER()) as avg_sal
     FROM employee_data
     )a
WHERE sal>avg_sal
ORDER BY 1;


-- author : @sanskriti_garg
