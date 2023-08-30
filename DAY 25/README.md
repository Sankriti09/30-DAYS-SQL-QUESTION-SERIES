
# DAY 25 | QUESTION 25 |-
❓ Find the highest target achieved by the employee or employees who work under the manager id 13.
> Output the first name of the employee and the target achieved. 
> The solution should show the highest target achieved under manager_id=13 and which employee(s) achieved it.

 # **:file_folder: DATASET**
   ### **salesforce_employees**

 <details><summary>
 View Question Source
 </summary>
It is a StrataScratch Question, Link: https://rb.gy/50a8q

 </details>


# 🎯 APPROACH -
 Using Cte( you can use subquery)
1. To fetch the employees working under manager id=13, using WHERE Clause i.e., WHERE manager_id = 13
2. Now we'll get the list of employees but we need the employee( or employees) who achieved the highest target. Using dense_rank() on the basis of the target in descending order as it will rank the target from highest to lowest
📍 There is no need to use a partition because we only want the list of employees who hit the highest targets
3. Now we have a column as d_rnk and in order to fetch the names who hit the highest targets using WHERE clause d_rnk=1


# 💡 INSIGHTS GENERATED -
list of all the employees fetched worked under manager_id 13 achieved the highest target.








