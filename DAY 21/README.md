
# DAY 21 | QUESTION 21 |-
❓  Write an SQL query to find all dates and IDs with higher temperatures compared to their previous dates (yesterday).
![image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/be5d5636-fb84-4b90-97da-4ae229838034)

 # **:file_folder: DATASET**
   ### **Weather**

 <details><summary>
 View Table
 </summary>
The weather table comprises of all the information on which date temperature with IDs


 | id  | recordDate      | temperature    |
 | ------- | ---------- | ---------- | 
 | 1    |  2015-01-01    | 10   |
 | 2    |  2015-01-02      | 25    |
 | 3    |  2015-01-03     | 20      |
 | 4    |  2015-01-04     | 30       |

 </details>


# 🎯 APPROACH -
Using CTE
1. to fetch higher temperatures on the following day than the previous day, using lag() on temperature based on the recordDate. This will give us the previous_temperatures according to date but with null values
2. To handle the null value, I am using COALESCE(). 📍The COALESCE function takes several arguments and returns the first non-NULL argument.
3. Using lag() within coalesce() it will replace null values caused by lag() with the temperature column data.
4. In the main query, filtering records where the temperature is greater than the previous day, using 'WHERE CLAUSE' i.e., WHERE temperature>previous_tempertaure;

# 💡 INSIGHTS GENERATED -
Only IDs with 2 and 4 with higher temperatures compared to their previous dates (yesterday)

![image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/71e04176-d8c4-4e3e-a80f-ed4d3b6ed5c7)

## Attachment -
LinkedIn Day 21 Post link : https://rb.gy/zu2g1








