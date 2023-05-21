
# DAY 5 | QUSTION 5 |-
❓Dispay the activity_code column  i.e., impressions and clicks as new columns with their corresponding values based on the date for 1st October 2021 and 2nd October 2021.

 # **:file_folder: DATASET**
 Danny has shared with you 3 key datasets for this case study:
   ### **1. Employee**

 <details><summary>
 View Table
 </summary>
The employee_data table captures all the information of each employee comprising salary, department, job role, comission earned.
![This is an image](https://drive.google.com/file/d/1jzfc9FtUdDEl4J615A6XH4nRQSgWr2dg/view?usp=share_link))
  
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
▶we want impressions and clicks only for dates 1st and 2nd October, filtering records using 'WHERE' CLAUSE
▶ Now, to fetch values for impressions and clicks,
use two case statements for both impressions and clicks separately.
▶ Using the max function in both the case statements as if we only apply case then it will also give null
So to avoid null values and fetching only the numbers using the max function.
▶ At the end, use group by date as we want impressions and click for both dates.

## 💡 INSIGHTS GENERATED
 - There is a total of 6 employees who earns more than the overall average salary.
