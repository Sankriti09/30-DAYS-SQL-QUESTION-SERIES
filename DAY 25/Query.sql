
-- DAY 25 | QUESTION 25|

-- ❓ Find the highest target achieved by the employee or employees who works under the manager id 13.
--> Output the first name of the employee and the target achieved.
--> The solution should show the highest target achieved under manager_id=13 and which employee(s) achieved it.
WITH highest_target AS
(
  SELECT first_name, target,
          DENSE_RANK() over(order by target desc) as d_rnk
  FROM salesforce_employees 
  WHERE manager_id = 13
)

  SELECT first_name, target
  FROM highest_target
  WHERE d_rnk=1;

-- author : Sanskriti_Garg
