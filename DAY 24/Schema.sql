-- TABLE SCRIPT -

CREATE TABLE Employee_Details
 (EmpId int,
 FullName varchar(30),
 ManagerId int,
 DateOfJoining date,
 City varchar(30));
 
INSERT INTO Employee_Details VALUES
 (121, 'John Snow', null, '2019-01-31', 'Toronto'),
 (180, 'Samwell Tarly', 121, '2020-08-20', 'Buffalo'),
 (321, 'Bran Stark', 678, '2021-03-27', 'New York');
 
CREATE TABLE Employee_Salary
 (EmployeeId int, Project char(4), Salary int, Variable int);
 
INSERT INTO Employee_Salary VALUES
 (121, 'P1', 800000, 20000),
 (321, 'P2',350000, 10000);
