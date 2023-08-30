
# DAY 28 | QUESTION 28 |-
❓  Find the top 5 states with the most 5-star businesses. Output the state name along with the number of 5-star businesses and order records by the number of 5-star businesses in descending order.
> 📌Explanation-
- In case there are ties in the number of businesses, return all the unique states.
- If two states have the same result, sort them in alphabetical order.

  This question is taken from the StrataScratch Problem.

 # **:file_folder: DATASETS :**
 To solve this problem, use the following table -
   ### **yelp_business**

 <details><summary>
 View Question Source
 </summary>
Question link: https://rb.gy/pbw6s

 </details>

## 🎯 APPROACH -
Using CTE, you can use a subquery\
𝐈𝐧 𝐭𝐡𝐞 𝐟𝐢𝐫𝐬𝐭 𝐂𝐓𝐄,
1. We need businesses whose ratings are 5 stars, using the WHERE clause to filter out the businesses
2. Now we'll get the list of all the businesses whose ratings are 5 stars, using COUNT() as a window function to count businesses working in each state, named "n_businesses".
   
𝐒𝐄𝐂𝐎𝐍𝐃 𝐂𝐓𝐄 -
- In order to calculate the top five states, using rank() on the basis of n_businesses. As a result, it will give the list of states and their businesses count with the rank
  
𝐌𝐀𝐈𝐍 𝐐𝐔𝐄𝐑𝐘 -
- Filtering top 5 states with top 5 businesses, using WHERE CLAUSE i.e., WHERE rank>=5

📍NOTE -
The reason why I use rank() is that if any two or more states have the same business count then it will skip the value accordingly and give the required result.

### Here, when we used to find rank according to any particular column, we mostly use DENSE_RANK() to give the rank.
But during an interview, it might be possible that we encounter a question\
"𝐰𝐡𝐞𝐧 𝐰𝐞 𝐬𝐡𝐨𝐮𝐥𝐝 𝐮𝐬𝐞 𝐭𝐡𝐞 𝐑𝐀𝐍𝐊(), 𝐃𝐄𝐍𝐒𝐄_𝐑𝐀𝐍𝐊() 𝐚𝐧𝐝 𝐑𝐎𝐖_𝐍𝐔𝐌𝐁𝐄𝐑(), what is its USE CASE?

1. Row_number() --> can be used where we want to treat every row as unique(even duplicate values)
2. DENSE_RANK() --> uses where we don't want to skip the rank according to values and want the rank without any gap.\
ex - Top 3 states with the highest revenue.
3. RANK() --> can be used where the required solution is to rank customers according to the states( where we can ignore the rank skipping)
There can be many use cases for the three of them. It's just how we practice for better understanding🙂

#### And we solved the problem!!
LinkedIn Post Link : https://rb.gy/eydvr


