
# DAY 7 | QUSTION 7 |-
❓  Display all the employees who are getting some commission in the sales department where the employees have joined only on weekdays.

 # **:file_folder: DATASETS :**
 Danny has shared with you 3 key datasets for this case study:
   ### **1. Employee**

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
 
  ### **2. Department**
  
  <details><summary>
 View Table
 </summary>
 The department table captures all the information of different department names with their department names.
  
| DEPTNO | DNAME      |    LOC   |
|--------|------------|----------|
|  10	   | ACCOUNTING	| NEW YORK |
|  20	   | RESEARCH	  | DALLAS   |
|  30	   | SALES      |	CHICAGO  |
|  40	   | OPERATIONS	| BOSTON   |
 
 </details>

### 🎯 APPROACH -
Solving with a subquery ( you can use CTE)
1. Join both the tables(employee and department) based on the same column(deptno)
2. filtering employees working in the sales department and earning some commission using 'WHERE' CLAUSE
3. Now we have all the employee names who are working in the SALES department having a commission greater than 0
4. <p>But there is one more condition, we need all the employees who joined on weekdays( i.e., working days from Monday to Friday).<br>So Firstly finding weekday numbers from hiredate column for each employee using WEEKDAY().</p>
5. now we have weekday numbers for each employee but we want employees who joined on weekdays( i.e., working days), using WHERE CLAUSE in the main query to filter the same.
6. As a result, we'll the get the list of employees who joined on week days and earning some commission.

## 💡 INSIGHTS GENERATED -
 ![This is an image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/e8016223-deff-4cb3-80cf-c0aafc9f59d1)
