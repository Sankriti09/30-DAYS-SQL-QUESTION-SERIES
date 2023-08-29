-- Day 22 | Question 22

-- ❓The accounts table reflects the balance before these transactions happened.
-- So, essentially we have to generate an account statement of a user after the different transactions happened.
WITH Account_statement AS
(
  SELECT A.ACCOUNTNO
      , t.TransactionDate
      , (CASE WHEN T.TRANSACTIONTYPE = 'D' THEN T.TRANSACTIONAMOUNT END) AS CREDIT
      , (CASE WHEN T.TRANSACTIONTYPE = 'W' THEN T.TRANSACTIONAMOUNT END) AS DEBIT
      , (CASE
              WHEN TRANSACTIONTYPE = 'D' THEN T.TRANSACTIONAMOUNT
                 ELSE -TRANSACTIONAMOUNT
              END)                                                       AS AMOUNT
      , a.balance
      , row_number() over(order by transactiondate) as r_n
   FROM ACCOUNTS A
   INNER JOIN TRANSACTIONS T ON A.ACCOUNTNO = T.ACCOUNTNO
),

user_balance AS
(
  SELECT Accountno
        , credit
        , debit
        , transactiondate 
        , (CASE WHEN r_n=1 THEN (balance+amount) 
                   ELSE amount 
                END)as balance
  FROM Account_statement
 )

SELECT accountno
      , credit
      , debit
      , SUM(BALANCE) OVER(PARTITION BY accountno ORDER BY transactiondate) as balance
FROM user_balance;

--  author : Sanskriti_Garg
