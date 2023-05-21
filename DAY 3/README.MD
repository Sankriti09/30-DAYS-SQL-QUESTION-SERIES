# DAY 3 | QUESTION 3 | -
❓ Get all the employees who work in the same departments as SCOTT (employee_name)
> Assumption - A customer can purchase more than one item on the same date as a first purchase.
If the customer has more than one order on the same day, then select the first ordered_item alphabetically.

 # **:file_folder: DATASET**
 Danny has shared with you 3 key datasets for this case study:
   ### **1. Employee**

 <details><summary>
 View Table
 </summary>
The employee_data table captures all the information of each employee comprising salary, department, job role, comission earned.

 | Emp_no  | Ename      | job        | mgr  | hiredate           | sal   | comm | deptno|
 | ------- | ---------- | ---------- | ---- | --------           | ----- | ---- | ----- |
 | 7934    |  MILLER    |CLERK       |7782  |1982-01-23 00:00:00 |  1300 | NULL |
 | 7902    |  FORD      |ANALYST     |7566  |1981-12-03 00:00:00 |  3000 | NULL |
 | 7900    |  JAMES     |CLERK       |7698  |1981-12-03 00:00:00 |   950 | NULL |
 | 7876    |  ADAMS     |CLERK       |7788  |1983-01-12 00:00:00 |  1100 | NULL |
 | 7844    |  TURNER    |SALESMAN    |7698  |1981-09-08 00:00:00 |  1500 |  0   |
 | 7839    |  KING      |PRESIDENT   |NULL  |1981-11-17 00:00:00 |  5000 | NULL |
 | 7788    |  SCOTT     |ANALYST     |7566  |1982-12-09 00:00:00 |  3000 | NULL |
 | 7782    |  CLARK     |MANAGER     |7839  |1981-06-09 00:00:00 |  2450 | NULL |
 | 7698    |  BLAKE     |MANAGER     |7839  |1981-05-01 00:00:00 |  2850 | NULL |
 | 7654    |  MARTIN    |SALESMAN    |7698  |1981-09-28 00:00:00 |  1250 | 1400 |
 | 7566    |  JONES     |MANAGER     |7839  |1981-04-02 00:00:00 |  2975 |
 | 7521    |  WARD      |SALESMAN    |7698  |1981-02-22 00:00:00 |  1250 |
 | 7499    |  ALLEN     |SALESMAN    |7698  |1981-02-20 00:00:00 |  1600 |
 | 7369    |  SMITH     |CLERK       |7902  |1980-12-17 00:00:00 |   800 |

 </details>
 
  ### **2. Department**
  
  <details><summary>
 View Table
 </summary>
 The department table captures all the information of different department names with their department names.
  
| DEPTNO | DNAME      |    LOC   |
|  10	   | ACCOUNTING	| NEW YORK |
|  20	   | RESEARCH	  | DALLAS   |
|  30	   | SALES      |	CHICAGO  |
|  40	   | OPERATIONS	| BOSTON   |
 
 </details>

### 🎯 APPROACH -
Solving this question using Subquery(you can use CTE)
- here we have two conditions:-
1. same department no
2. same department as Scott
so solving with subquery in where clause
- join both the tables employee and department based on the same column(i.e., deptno) in the main query
- In order to fetch employees who work in the same department,
applying join in the where subquery too with the same column(deptno),
📌NOTE : if we don't use join in subquery then we can't access the name and deptno at the same time from the department and employee table.
- then adding condition e.ename = 'Scott' in the where clause subquery

### 💡 INSIGHTS GENERATED -
There is a total of 5 employees including Scott who work in the same department with Scott.
