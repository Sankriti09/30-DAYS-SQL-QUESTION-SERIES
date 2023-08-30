
-- DAY 24 | QUESTION 24|

-- ❓  Write a query to fetch the employee names and their salary even if the salary record is not present for the employee.
SELECT e.FullName, s.Salary
FROM Employee_details e
LEFT JOIN Employee_Salary s
    ON e.EmpId = s.EmployeeId
ORDER BY 1;

-- author :Sanskriti_garg
