
# DAY 5 | QUSTION 5 |-
❓Dispay the activity_code column  i.e., impressions and clicks as new columns with their corresponding values based on the date for 1st October 2021 and 2nd October 2021.

 # **:file_folder: DATASET**
 Danny has shared with you 3 key datasets for this case study:
   ### ** Online_Activity**

 <details><summary>
 View Image
 </summary>
The employee_data table captures all the information of each employee comprising salary, department, job role, comission earned.
![This is an image](https://drive.google.com/file/d/1jzfc9FtUdDEl4J615A6XH4nRQSgWr2dg/view?usp=share_link))
 
 </details>
 
  ### **2. Department**
  
  <details><summary>
 View Table
 </summary>
 The department table captures all the information of different department names with their department names.
  
| DEPTNO | DNAME      |    LOC   |
|--------|------------|----------|
|  10	   | ACCOUNTING	| NEW YORK |
|  20	   | RESEARCH	  | DALLAS   |
|  30	   | SALES      |	CHICAGO  |
|  40	   | OPERATIONS	| BOSTON   |
 
 </details>

### 🎯 APPROACH -
▶we want impressions and clicks only for dates 1st and 2nd October, filtering records using 'WHERE' CLAUSE
▶ Now, to fetch values for impressions and clicks,
use two case statements for both impressions and clicks separately.
▶ Using the max function in both the case statements as if we only apply case then it will also give null
So to avoid null values and fetching only the numbers using the max function.
▶ At the end, use group by date as we want impressions and click for both dates.

## 💡 INSIGHTS GENERATED
 - There is a total of 6 employees who earns more than the overall average salary.
