
-- DAY 30 | QUESTION 30 |

-- ❓𝐖𝐫𝐢𝐭𝐞 𝐚𝐧 𝐒𝐐𝐋 𝐪𝐮𝐞𝐫𝐲 𝐭𝐨 𝐟𝐢𝐧𝐝 𝐟𝐨𝐫 𝐞𝐚𝐜𝐡 𝐮𝐬𝐞𝐫, 𝐭𝐡𝐞 𝐣𝐨𝐢𝐧 𝐝𝐚𝐭𝐞 𝐚𝐧𝐝 𝐭𝐡𝐞 𝐧𝐮𝐦𝐛𝐞𝐫 𝐨𝐟 𝐨𝐫𝐝𝐞𝐫𝐬 𝐭𝐡𝐞𝐲 𝐦𝐚𝐝𝐞 𝐚𝐬 𝐚 𝐛𝐮𝐲𝐞𝐫 𝐢𝐧 2019.
-- Return the result table in any order.
SELECT u.user_id as buyer_id
    , u.join_date
    , SUM(CASE WHEN EXTRACT(YEAR FROM o.order_date) = '2019' THEN 1 ELSE 0 END)AS orders_in_2019
FROM users u 
INNER JOIN orders o 
  ON u.user_id = o.buyer_id
GROUP BY 1,2

-- author : Sanskriti_Garg
