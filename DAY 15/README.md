
# DAY 15 | QUESTION 15 |-
❓ Write a query to fetch the number of users who purchased products on multiple days
> ASSUMPTION - A user can buy multiple products on the same day.

 # **:file_folder: DATASETS :**
   ### **Transacts**

 <details><summary>
 View Table
 </summary>
The transacts table captures all the information of each user like which product is purchased on which date with how many quantity.

 | Transaction_id | User_id  | Transaction_date | Product_id | Quantity  |
 | -------       | --------- | ----------       | ---------- | --------  | 
 | 1             |  U1       |2022-12-16        |P1          |2          |  
 | 2             |  U2       |2022-12-16        |P2          |1          |
 | 3             |  U1       |2022-12-16        |P3          |1          |
 | 4             |  U4       |2022-12-16        |P4          |4          |
 | 5             |  U2       |2022-12-17        |P5          |3          |
 | 6             |  U2       |2022-12-17        |P6          |2          |
 | 7             |  U4       |2022-12-18        |P7          |1          |  
 | 8             |  U3       |2022-12-18        |P8          |2          | 
 | 9             |  U3       |2022-12-19        |P9          |8          |

 </details>

# 🎯 APPROACH -
Using CTEs to solve a problem(you can use a subquery too)
1. In the CTE, using DENSE_RANK() on the basis of transaction_date each User ID.
2. As a result, we'll get a rank of each user id. This pattern helps to conclude how the user is purchasing products on different days
3. To filter the users who purchased the products on different days, using 'WHERE CLAUSE' in which d_rnk=2
4. We'll get the list of users but to count the number of users, using count(user_id) where d_rnk=2 in the main query.


# 💡 INSIGHTS GENERATED -
- There are a total of 4 users in the table but only user with id 2 and 4 is purchasing products on different days.
![This is an image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/e7d25945-1a56-46dd-87b8-f675a5c83acf)



