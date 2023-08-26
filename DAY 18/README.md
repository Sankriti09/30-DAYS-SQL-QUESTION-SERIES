
# DAY 18 | QUESTION 18 |-
❓  Display the employees who are earning the same salary in the table.
> Assumption - In a department, more than one employee may have the same salary.

 # **:file_folder: DATASET**
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


### 🎯 APPROACH -
1. Applying Self Join on the employee table based on salary
2. Now we have a list of employees, filtering the employee names and salaries using 'WHERE CLAUSE
i.e., E.SAL = D.SAL WHERE E.EMPNO<>D.EMPNO
3. This will give us the list of employees earning the same salary.

### But wait what is self - join?
> Self- Join is used to join the table to itself, i.e., each row of the table is joined with itself. It is one of the most asked joins during an interview.

## 💡 INSIGHTS GENERATED -
There are a total of 4 employees in which two are earning 1250 salary and two belong to the analyst earning 3000.
 ![This is an image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/bd4340f5-bd95-488e-8637-ef6e7ef2c35f)

