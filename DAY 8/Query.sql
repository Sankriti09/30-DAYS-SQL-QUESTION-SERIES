
--day 8

--❓ Display only the non-matching records from the department table 
--📍Assumption - (matching records shouldn’t be selected)
SELECT d.deptno
    , e.job
    , d.dname
    , d.loc
FROM department_data AS d
LEFT JOIN employee_data AS e
    ON e.deptno = d.deptno
WHERE e.deptno IS NULL;


--AUTHOR : @Sanskriti_garg
