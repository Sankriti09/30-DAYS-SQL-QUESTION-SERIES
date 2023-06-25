
# DAY 12 | QUSTION 12 |-
❓ Write an SQL query to fetch only even rows from the table
> even values --> values which are divisible by 2 i.e., (2,4,6,8,10,12..... so on)

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

### 🎯 APPROACH -
Using cte to solve a problem(you can use a subquery too)
1. Write an SQL query to fetch only even rows from the table In the CTE, using the row_number function to find unique numbers for each row in a new column as r_n.
2. In the main query, the r_n column has a unique number for each row and to filter even rows from the table using 'WHERE CLAUSE'
3.  In the where clause, you can filter the even rows by two methods-
- MOD(r_n,2) =0
* r_n % 2=0

 4. Using MOD() to fetch the even rows.

## But wait...what does MOD() do?
📍 mod returns the remainder when a number is divided by another number.
> Syntax : MOD(first_number, second_number)


## 💡 INSIGHTS GENERATED -
> There is a total of 14 rows in the employee table and 7 even rows are returned.

