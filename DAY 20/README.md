
# DAY 20 | QUESTION 20 |-
❓  Write a query to return for each user the days elapsed between the last action and the second-to-last action, in ascending order by user ID.
> 📍 Assumption -
 - Time elapsed: date difference between two dates of last action and second-last action.
 - A user's action can only be one time, so treat the first action as the last.

 # **:file_folder: DATASET**
   ### **Users**

 <details><summary>
 View Table
 </summary>
The Users table captures all the information related to each user with a unique user_id.


 | user_id  | action      | action_date    |
 | ------- | ---------- | ---------- | 
 | 1    |  Start    | 2020-02-12   |
 | 1    |  Cancel      | 2020-02-13    |
 | 2    |  Start     | 2020-02-11      |
 | 2    |  Publish     | 2020-02-14       |
 | 3  |  Start    | 2020-02-15    |
 | 3    |  Cancel      | 2020-02-15  |
 | 4    |  Start     | 2020-02-18     |
 | 1    |  Publish     | 2020-02-19    | 

 </details>


# 🎯 APPROACH -
1. In the first CTE( user_dates), fetching the last and second-last actions of a user by retrieving their action_dates using dense_rank() of each user by arranging action_date in descending order.
2. Now we have the list of all actions(first and last) of users. Filtering the last and second-last action_date using WHERE CLAUSE i.e., WHERE d_rnk in(1,2)
3. Then we need to find the date elapsed between these two actions, fetching the day from the whole date using extract()
4. Now we have a list of users of their last and second last actions with their days( i.e., dates of the month). In order to calculate the difference, we need to use LEAD(action_date) according to each user.
5. As a result, each user with their dates and next_dates is displayed. In the third CTE, using row_number() to categorize the two actions
6. In the main query, filtering the first r_n value and calculating the difference i.e., (date-next_date) WHERE r_n=1

# 💡 INSIGHTS GENERATED -
![This is an image](https://github.com/Sankriti09/30-DAYS-SQL-QUESTION-SERIES/assets/77229345/50eb006c-1402-46ae-9c83-538a17640afe)






