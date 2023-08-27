
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
The user_transaction table captures all the information related to each user with a unique user_id, how many he/she has visited or the order has been placed or not?


 | user_id  | visit      | make_order    |
 | ------- | ---------- | ---------- | 
 | 4a495637    |  2    | true   |
 | 0288950d    |  3      | false     |
 | 434d93d7    |  4     | true       |
 | 0cf653b3    |  5     | true       |
 | e4046cd7796c  |  0    | false    |
 | 4e5cc7cc3743    |  1      | false   |
 | 10bc8ea99240    |  6     | true     |
 | 545a8c79deab    |  3     | false     |
 | d9de62380374    |  3     | true     |
 | 768ec99c    |  7    | true    |
 | e4c9a45e1c2c    |  0     | false     | 

 </details>


### 🎯 APPROACH -
1. To calculate the conversion rate of paid orders, we need to divide the number of users who completed the transaction by the number of users who visited.
2. First, we fetch the count of users who completed the transaction using WHERE CLAUSE i.e., COUNT(USER_ID) WHERE make_order = True
3. Then we fetch the count of users who visited (Visited means the visit column cannot be null), then write this query in the select as a subquery.
4. At the end, divide both the count and round up to 1 place



