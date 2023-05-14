
# DAY 4 | QUSTION 4 |-
❓Display all the employees who are getting more than the average salaries of all the employees(overall average salary).

 # **:file_folder: DATASETS**
 Danny has shared with you 3 key datasets for this case study:
   ### **1. Employee_data**

 <details><summary>
 View Table
 </summary>
The employee_data table captures all the employees information starting from their name, job role, salary, deptno(from this column we can join this table with the second table)

 | customer_id  | order_date | product_id |
 | -----------  | ---------- | ---------- |
 | A	          | 2021-01-01 | 1 |
 | A	          | 2021-01-01 | 2 |
 | A	          | 2021-01-07 | 2 |
 | A	          | 2021-01-10 | 3 |
 | A	          | 2021-01-11 | 3 |
 | A	          | 2021-01-11 | 3 |
 | B	          | 2021-01-01 | 2 |
 | B	          | 2021-01-02 | 2 |
 | B	          | 2021-01-04 | 1 |
 | B          	| 2021-01-11 | 1 |
 | B	          | 2021-01-16 | 3 |
 | B	          | 2021-02-01 | 3 |
 | C	          | 2021-01-01 | 3 |
 | C	          | 2021-01-01 | 3 |
 | C          	| 2021-01-07 | 3 |

 </details>
 
 ### **2. Department **

 <details><summary>
 View Table
 </summary>
 The department table captures the product information i.e., deptno and the corresponding department name.
 
 | product_id  | product_name | price |
 | ----------  | ------------ | ----- |
 | 1	        | sushi | 10|
 | 2	        | curry | 15 |
 | 3	        | ramen | 12 |

 </details>

### 🎯APPROACH -
You can solve this question with so many approaches, I am using a sub-query within from clause
- in the sub-query, fetching employee_name, job , sal along with calculating avg(salary) using window function
- here calculating avg(sal) with over(),
  📍OVER() will give the avg. of salary across all the employees as a new column
also, we don't need the avg(salary) based on job/ department, so we can leave inside over() with nothing.
- The FLOOR() function rounds up to the largest integer value that is smaller than or equal to a number.
- At the end, In the main query using a where clause where the employee's salary > avg salary of all employees.

## **:dart: INSIGHTS GENERATED**
 - There is a total of 6 employees who earns more than the overall average salary.
 



