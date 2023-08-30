
# DAY 11 | QUESTION 11 |-
❓  Did we ship at least one box of ‘After Nines’ to ‘New Zealand’ on all the months?

 This question is taken from the Purna Duggirala Sir's Chandoo.org Chocolate Dataset

 # **:file_folder: DATASETS :**
 To solve this problem, use the following tables
 
 ![image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/bca67ec9-acde-495f-bdc7-48d62a07bbd1)

   ### **Products and Sales**

 <details><summary>
 View Table link
 </summary>
the dataset is quite large, and not able to provide here 🙁\
You can import the DDL and Insert script to your SQL software from the link - https://shorturl.at/dfhK3

 </details>

## 🎯 APPROACH -
1. applying inner join in the three tables(sales, products, geo) based on the same columns.
2. to find the boxes of 'AFTER NINE' for NEW ZEALAND, filter product IDs using WHERE CLAUSE.
3. Next, to calculate monthly wise 'AFTER NINES' boxes we need to use the extract function to extract the month from the saledate
4. Every product has PID, so we need to count the PID after nine boxes that are shipped to NEW ZEALAND according to each month.\
i.e., count(PID) GROUP BY MONTH
5. filtering at least one box of 'AFTER NINES uses the HAVING keyword

## 💡 INSIGHTS GENERATED -
YES, we shipped at least one box of 'AFTER NINES' to 'NEW ZEALAND' all the months.

![image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/fa3e5a68-a5cf-4262-8d4f-bbd526233d82)




