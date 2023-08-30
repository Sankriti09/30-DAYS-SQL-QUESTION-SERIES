
# DAY 29 | QUESTION 29 |-
You are given a list of numbers representing how many emails each Microsoft Outlook user has in their inbox. Before the Product Management team can work on features related to inbox zero or bulk-deleting email, they want to know the mean, median, and mode for the number of emails.\
❓ Output the median, median, and mode (in this order). Round the mean to the closest integer and assume that there are no ties for mode

1. mean --> average value of all the observations
2. median --> middle value in the list of observations
3. mode --> most occurred value from the list of observations.

 This question is taken from DataLemur 🐒 (Ace the SQL & Data Interview), where we need to calculate the mean, median, and mode.

 # **:file_folder: DATASETS :**
 To solve this problem, use the following table -
   ### **inbox_stats**

 <details><summary>
 View Question Source
 </summary>
Question Link: https://datalemur.com/questions/mean-median-mod

 </details>

## 🎯 APPROACH -
𝐅𝐈𝐑𝐒𝐓 𝐂𝐓𝐄, 𝐜𝐚𝐥𝐜𝐮𝐥𝐚𝐭𝐢𝐧𝐠 𝐦𝐞𝐚𝐧 -
- To calculate mean of email_count, using AVG() in email_count and rounding the mean value to the nearest integer.
𝐒𝐄𝐂𝐎𝐍𝐃 𝐂𝐓𝐄, 𝐜𝐚𝐥𝐜𝐮𝐥𝐚𝐭𝐢𝐧𝐠 𝐦𝐨𝐝𝐞 -
1. To calculate the mode of email_count, which means finding the most occurred email_count
2. Using COUNT() on the basis of email_count. As a result, a list of email_count with their total_count is displayed.
3. In order to fetch the most occurred email_count, using order by clause in DESC with limit 1
𝐓𝐇𝐈𝐑𝐃 𝐚𝐧𝐝 𝐅𝐎𝐔𝐑𝐓𝐇 𝐂𝐓𝐄, 𝐜𝐚𝐥𝐜𝐮𝐥𝐚𝐭𝐢𝐧𝐠 𝐦𝐞𝐝𝐢𝐚𝐧 -
1. 𝐈𝐧 𝐭𝐡𝐞 𝐭𝐡𝐢𝐫𝐝 𝐂𝐓𝐄, using a subquery to find the rank of each row with ROW_NUMBER(), naming a column "r_n"
2. Then in the main query, using last_value() with the frame clause on the basis of a column created by row_number(), naming column "l_value". As a result, every row has a number with its last value
3. 𝐈𝐧 𝐭𝐡𝐞 𝐟𝐨𝐮𝐫𝐭𝐡 𝐂𝐓𝐄, to find the median value of email_count
using r_n and l_value you can filter the r_n using the where clause
𝐈𝐧 𝐭𝐡𝐞 𝐦𝐚𝐢𝐧 𝐪𝐮𝐞𝐫𝐲
- Joining these three CTEs to obtain the required solution.

### And we solved the problem.
LinkedIn Post Link : https://shorturl.at/mvx48

