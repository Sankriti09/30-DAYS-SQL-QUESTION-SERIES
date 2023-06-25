
# DAY 14 | QUSTION 14 |-
❓ What is the median salary for each department?
> ASSUMPTION - Employees may have the same salary. Count all the salaries even duplicate a unique value.

 # **:file_folder: DATASETS :**
   ### **Employee**

 <details><summary>
 View Table
 </summary>
The employee_data table captures all the information of each employee comprising salary, department, job role, comission earned.

 | Emp_no  | Ename      | job        | mgr  | hiredate           | sal   | comm | deptno|
 | ------- | ---------- | ---------- | ---- | --------           | ----- | ---- | ----- |
 | 7934    |  MILLER    |CLERK       |7782  |1982-01-23 00:00:00 |  1300 | NULL |  10   |
 | 7902    |  FORD      |ANALYST     |7566  |1981-12-03 00:00:00 |  3000 | NULL |  20   |
 | 7900    |  JAMES     |CLERK       |7698  |1981-12-03 00:00:00 |   950 | NULL |  30   |
 | 7876    |  ADAMS     |CLERK       |7788  |1983-01-12 00:00:00 |  1100 | NULL |  20   |
 | 7844    |  TURNER    |SALESMAN    |7698  |1981-09-08 00:00:00 |  1500 |  0   |  30   |
 | 7839    |  KING      |PRESIDENT   |NULL  |1981-11-17 00:00:00 |  5000 | NULL |  10   |
 | 7788    |  SCOTT     |ANALYST     |7566  |1982-12-09 00:00:00 |  3000 | NULL |  20   |
 | 7782    |  CLARK     |MANAGER     |7839  |1981-06-09 00:00:00 |  2450 | NULL |  10   |
 | 7698    |  BLAKE     |MANAGER     |7839  |1981-05-01 00:00:00 |  2850 | NULL |  30   |
 | 7654    |  MARTIN    |SALESMAN    |7698  |1981-09-28 00:00:00 |  1250 | 1400 |  30   |
 | 7566    |  JONES     |MANAGER     |7839  |1981-04-02 00:00:00 |  2975 | NULL |  20   | 
 | 7521    |  WARD      |SALESMAN    |7698  |1981-02-22 00:00:00 |  1250 | 500  |  30   |
 | 7499    |  ALLEN     |SALESMAN    |7698  |1981-02-20 00:00:00 |  1600 | 300  |  30   |
 | 7369    |  SMITH     |CLERK       |7902  |1980-12-17 00:00:00 |   800 | NULL |  20   |

 </details>

 ## But wait... there is no function to calculate median values in SQL, now what to do??
 > SQL has numerous functions if we want to calculate the sum, average, max-min value, etc. But if we want to calculate the median during analysis, SQL has no such function.
 > We need to apply different approaches to achieve the same.

Today I am sharing one such problem where we're calculating the median from the table.

### 🎯 APPROACH -
Using cte's to solve a problem(you can use a subquery too)
1. In the first cte, Applying row_number() as it will give a unique rank on the basis of salary even duplicates for each department.
2. Now we have unique rank for each department, in the second cte applying the last_value function on the basis of unique_rank, it will give the last_value of r_n for each department.
3.  To find the median salar, filtering records(i.e., salary) from r_n by using n/2 to (n/2)+1 formula in the where clause
4. you'll get your median salary


## 💡 INSIGHTS GENERATED -
- For dept 10, median salary is 2450
- For dept 20, median salary is 2975
- For dept 30, median salary is 1375

 ![This is an image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/17fba74d-2048-4092-9e0d-ed3c58d9d56d)


