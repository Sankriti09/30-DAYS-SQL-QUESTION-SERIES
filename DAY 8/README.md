
# DAY 8 | QUSTION 8 |-
❓ Display only the non-matching records from the department table 
> Assumption - (matching records shouldn’t be selected)

 # **:file_folder: DATASETS :**
 To solve this problem, using the following two tables -
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
When we are joining two or more tables, we mostly use Inner Join based on the same column, but this will give us the matching records and we want to fetch non-matching records.
1. Joining both tables(employee and department) with left join based on the same column(deptno)
we'll do left join where the department table is on the left as we need to fetch the records from the department table.
2. This will give us the matching records from both the table and all the records from the left table(i.e., department).
But we only want the non-matching records from the department table.
3. filtering non- matching records using 'WHERE CLAUSE' in which the common column(i.e., employee.deptno) should be equal to null.

## 💡 INSIGHTS GENERATED -
There are a total of 4 departments, but only department no. 40 is fetched as it is the only department having no matching records with the employee table. 
That's why job = Null
 ![This is an image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/0b38278d-022c-4525-b08b-38f2cf348062)
