
# DAY 22 | QUESTION 22 |-
❓  The accounts table reflects the balance before these transactions happened. So, essentially we have to generate an account statement of a user after the different transactions happened.

![image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/96288ed2-6a8f-4b7e-bb67-7d5732e5eb05)

 # **:file_folder: DATASET**
   ### **1. ACCOUNTS**

 <details><summary>
 View Table
 </summary>
 The ACCOUNTS table comprises all the information of all the accounts containing account numbers with names and balances.

 | AccountNo  | Name      | Balance    |
 | ------- | ---------- | ---------- | 
 | 101    |  Venkat Ratnam    | 1000   |
 | 102    |  Abhinav    | 4000    |

 </details>
 
### **2. TRANSACTIONS**

 <details><summary>
 View Table
 </summary>
 The TRANSACTIONS table comprises all the information of all the accounts containing accountno, how many amounts had been withdrawn/deposited on which date.

 | AccountNo  | TransactionID   | TransactionDate  | TransactionType  |  TransactionAmount |   
 | ------- | ---------- | ---------- | -----| ----|
 | 101    |  1  |2011-04-01   | D | 300 |
 | 101    |  2    | 2011-04-02    | W | 500 |
 | 101    | 3    | 2011-04-03  | W | 200 |
 | 101    |  4    | 2011-04-04   | D | 44 |
 
 </details>

# 🎯 APPROACH -
In the first CTE-
1. Applying inner join on both the tables(accounts and transactions) based on the same column(accountno)
2. In order to separate credit and debit values in different columns(ROWS INTO COLUMNS), using a case statement i.e., if the transactiontype = 'D'( means deposit) and if the transactiontype = 'W'( means withdraw)
3. Now we have two separate columns, credit, and debit. In order to show the account of a user after credit and debit on each day. Using case statements in order to keep debit values as negative and credit values as positive.
4. As the user has 1000rs as their balance, in order to show how the balance looks on each day after depositing or withdrawing.
using row_number on the basis of each date.

In the second cte -
5. If r_n =1 then balance+amount so that our whole balance reflects how much money is there
6.  At the last, use the running_sum method to display how the balance is looking

# 💡 INSIGHTS GENERATED -
![image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/4a858aac-d741-4da1-a059-62de10286862)

## LinkedIn Post Attachment -
LinkedIn Day 22 Post link: https://shorturl.at/afJQ0









