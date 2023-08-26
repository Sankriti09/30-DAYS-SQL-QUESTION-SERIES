
# DAY 19 | QUESTION 19 |-
❓  Calculate the conversion rate of Paid Order users from the number of users who visited.
> 📍 Assumption -
 - PAID ORDERS users: number of users who completed the transaction. It is possible a user can never visit.
 - A user who placed the order completes the transaction
 - Multiply the rate by 100.0 to get better and more readable output.

 # **:file_folder: DATASET**
   ### **user_transaction**

 <details><summary>
 View Table
 </summary>
The user_transaction table captures all the information related to each user with unique user_id, how many he/she has visited or the order has been placed or not?


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
1. To calculate the conversion rate of paid orders, we need to divide the number of users who completed the transaction by the number of users who visited.
2. First, we fetch the count of users who completed the transaction using WHERE CLAUSE i.e., COUNT(USER_ID) WHERE make_order = True
3. Then we fetch the count of users who visited (Visited means the visit column cannot be null), then write this piece of query in the select as a subquery.
4. At the end, divide both the count and round up to 1 place

## 💡 INSIGHTS GENERATED -
There are a total of 4 employees in which two are earning 1250 salary and two belong to the analyst earning 3000.
 ![This is an image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/bd4340f5-bd95-488e-8637-ef6e7ef2c35f)


