
# DAY 5 | QUSTION 5 |-
❓Dispay the activity_code column  i.e., impressions and clicks as new columns with their corresponding values based on the date for 1st October 2021 and 2nd October 2021.

![This is an image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/e97370b1-3b44-409a-8446-bbab162b94b7)

 # **:file_folder: DATASET**
   ### Online Activity

 <details><summary>
 View Table
 </summary>
 This table captures all the information of the activity i.e., Impressions & Clicks with their corresponding count i.e., valus date-wise. 
 
 ![This is an image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/ac8ee73b-b982-4a41-b0be-b511c23b57da)

 </details>

### 🎯 APPROACH -
1. we want impressions and clicks only for dates 1st and 2nd October, filtering records using 'WHERE' CLAUSE
2. Now, to fetch values for impressions and clicks,
use two case statements for both impressions and clicks separately.
3. Using the max function in both the case statements as if we only apply case then it will also give null
So to avoid null values and fetching only the numbers using the max function.
3. At the end, use group by date as we want impressions and click for both dates.

## 💡 INSIGHTS GENERATED
 - On 1st October 2021, there were 23 impressions and clicked one time by the user and on 2nd October 2021, there were 2000 impressions and cclicked 20 times by the user.
