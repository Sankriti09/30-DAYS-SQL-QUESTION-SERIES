
# DAY 24 | QUESTION 24 |-
❓  Write a query to fetch the employee names and their salary even if the salary record is not present for the employee.

![image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/bbc1149e-2e19-4d5b-814c-8df9ab10e84f)

 # **:file_folder: DATASET**
   ### **1. Employee_Details**

 <details><summary>
 View Table
 </summary>
The Employee_details table captures all the information related to each employee.

| EmpId | FullName  | ManagerId      | DateOfJoining    | City |
|------ | ------- | ---------- | ---------- | ----- |
 | 121  |  John Snow    | null | 2019-01-31  | Toronto |
 | 380   |  Samwell Tarly | 121 | 2020-08-20  | Buffalo |
 | 321    |  Bran Stark | 678 | 2021-03-27    | New York |

 </details>

 ### **1. Employee_Salary**

 <details><summary>
 View Table
 </summary>
The Employee_salary table captures all the information related to each employee's salaries, their variables, and on which project they're working.

| EmployeeId | Project  | Salary      | Variable    |
|------ | ------- | ---------- | ---------- | 
 | 121  |  P1    | 800000 | 20000  | 
 | 321   | P2 | 121 | 350000  | 10000 |

 </details>


# 🎯 APPROACH -
1. In order to fetch the employee's name and salary, We'll join both tables based on the column 'employee_id'
2. We'll get the list of employee names but we need the employee names who are not even earning any salary. Using left join where the left table is 'employee_details' and the right table is 'employee_salary'
3. We'll get the list of employee names with their salary as per the question

## What is left join?
📌LEFT JOIN - Return the matching values from both the tables and non-matching records from the left table.
The result is NULL from the right side, if there is no match.


# 💡 INSIGHTS GENERATED -
Employee salary generated.

LinkedIn Post Link: https://rb.gy/mphzv







