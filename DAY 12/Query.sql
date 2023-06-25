
--day 12| Question 12

--❓Write an SQL query to fetch only even rows from the table.
--(even values --> divisible by 2 i..e, 2,4,6,8,10,12..... so on)
WITH row_num AS
(  SELECT *,
          ROW_NUMBER() OVER(ORDER BY empno) AS r_n
   FROM employee_data
)

SELECT *
FROM row_num
WHERE MOD(R_N,2)=0;

--author : sanskriti_garg
