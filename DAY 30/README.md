
# DAY 30 | QUESTION 30 |-
❓ 𝐖𝐫𝐢𝐭𝐞 𝐚𝐧 𝐒𝐐𝐋 𝐪𝐮𝐞𝐫𝐲 𝐭𝐨 𝐟𝐢𝐧𝐝 𝐟𝐨𝐫 𝐞𝐚𝐜𝐡 𝐮𝐬𝐞𝐫, 𝐭𝐡𝐞 𝐣𝐨𝐢𝐧 𝐝𝐚𝐭𝐞 𝐚𝐧𝐝 𝐭𝐡𝐞 𝐧𝐮𝐦𝐛𝐞𝐫 𝐨𝐟 𝐨𝐫𝐝𝐞𝐫𝐬 𝐭𝐡𝐞𝐲 𝐦𝐚𝐝𝐞 𝐚𝐬 𝐚 𝐛𝐮𝐲𝐞𝐫 𝐢𝐧 2019.\
Return the result table in any order.

![image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/ed145f94-af7b-4c2b-80a0-defa79751507)

 This question is taken from LeetCode, where we're using the sum function within the case statement.

 # **:file_folder: DATASETS :**
 To solve this problem, use the following table -
   ### **Users**

 <details><summary>
 View Question Link
 </summary>
Question Link : https://leetcode.com/problems/market-analysis-i/

 </details>

## 🎯 APPROACH -
Using Sub-query (you can use CTE)
1. Applying inner join on both the tables( users and orders ) based on the column present between them u.user_id = o.buyer_id
2. To fetch the number of orders each user bought as a buyer in 2019, Using case statements in which\
If the year is 2019 then 1, if the year<>2019 then 0
3. It will give a list of users with their number of orders, Using SUM within the Case statement to find orders_in_2019
4. To fetch the count of each user, apply group by clause on user_id and join_date

## 💡 INSIGHTS GENERATED -
![image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/56467cba-10c7-4ffc-be19-ced969632871)

And we solved the problem.\
LinkedIn post Link : https://shorturl.at/bKOP6






