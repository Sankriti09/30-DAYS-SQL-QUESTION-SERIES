-- Table script - 

CREATE TABLE ACCOUNTS(
 AccountNo int,
 Name varchar(40),
 Balance int);

INSERT INTO ACCOUNTS VALUES
 (101, 'Venkat Ratnam', 1000),
 (102, 'Abhinav', 4000);
 
CREATE TABLE TRANSACTIONS(
 AccountNo int,
 TransactionID int,
 TransactionDate date,
 TransactionType char(2),
 TransactionAmount int);

INSERT INTO TRANSACTIONS VALUES
 (101, 1, '2011-04-01','D',300), 
 (101, 2, '2011-04-02','W',500),
 (101, 3, '2011-04-03','W',200),
 (101, 4, '2011-04-04','D',44); 
