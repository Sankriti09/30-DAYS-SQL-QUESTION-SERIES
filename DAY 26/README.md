
# DAY 26 | QUESTION 26 |-
❓ Return the number of direct and overall reportees for each employee.
- Direct Reportee - are the reportees who are directly reporting to a person.
- Overall Reportee - are the reportees who are directly or indirectly reporting to a person.
  
Ex - there are two employees(empid '7' and '8') who are directly reporting to empid '2' but empid '15' and '16' are reporting to empid '7'
Hence, the overall reportees for empid 2 will be '4'

Input Table :

![image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/837136ad-e718-4012-ae1f-969428553674)

 # **:file_folder: DATASET**
   ### **reportee**

 <details><summary>
 View Table
 </summary>
The reportee table consists data of the employee_id with the corresponding manager(i.e., manager_id) he/she is reporting.


 | EmpID  | MgrID    | 
 | ------- | ---------- | 
 | 1    |  null    | 
 | 2   |  1      | 
 | 3    |  1     | 
 | 4    |  1     | 
 | 5  |  1    | 
 | 6    |  1      | 
 | 7    |  2     | 
 | 8    |  2     | 
 | 9    |  2    | 
 | 10   |  3      | 
 | 11    |  3     | 
 | 12  |  4     | 
 | 13 |  5    | 
 | 14    |  5      | 
 | 15    |  7     | 
 | 16 |  7    | 
 | 17    |  9      | 

 </details>


# 🎯 APPROACH -
𝐈𝐟 𝐲𝐨𝐮 𝐰𝐚𝐧𝐭 𝐲𝐨𝐮𝐫 𝐂𝐓𝐄 𝐭𝐨 𝐛𝐞 𝐫𝐞𝐜𝐮𝐫𝐬𝐢𝐯𝐞, 𝐛𝐞𝐠𝐢𝐧 𝐭𝐡𝐞 𝐟𝐢𝐫𝐬𝐭 𝐂𝐓𝐄 𝐰𝐢𝐭𝐡 𝐭𝐡𝐞 𝐖𝐈𝐓𝐇 𝐜𝐥𝐚𝐮𝐬𝐞.
### But what is Recursive CTE?
When I learned about CTEs and started solving problems. I found them quite beneficial in solving complex queries.\
Basically, there are two types of CTEs-
--> 𝐑𝐞𝐜𝐮𝐫𝐬𝐢𝐯𝐞 𝐚𝐧𝐝 𝐍𝐨𝐧-𝐑𝐞𝐜𝐮𝐫𝐬𝐢𝐯𝐞\
But if there is a problem related to employee hierarchy, you will not be able to solve it by using CTEs and Self-join. For that purpose, 𝐑𝐄𝐂𝐔𝐑𝐒𝐈𝐕𝐄 𝐂𝐓𝐄 came into the process.

A recursive CTE is a subquery that refers to itself using its own name(just like recursion in any programming language).\
In recursive CTE, there are two queries :
- base query(used to give the starting condition to fetch records)
- query in which cte is called by its own name.\
𝐍𝐎𝐓𝐄 - To connect both these queries, UNION/ UNION ALL is used.

To solve this problem :
1. In the first CTE, to fetch how many employees are reporting to a manager, using a recursive keyword with the UNION operator
📍 Union ALL returns the duplicate values but we want the actual count of employees reporting to a particular person.
2. Now we have the list of employees reporting to a person but in order to count how many are reporting to each person, we use COUNT(empid) with the Window function on the basis of each mgrid(manager_id). It will give the overall reportee count.
3. In the third CTE, we will count the number of direct reportees, applying left-join as a self-join with the COUNT() on the basis of empid
4. In the main query, joining both the CTEs based on the empid to return direct and overall reportees for each employee.

# 💡 INSIGHTS GENERATED -
![image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/5a6de750-5c91-4c07-a635-3b7b730c3c97)








