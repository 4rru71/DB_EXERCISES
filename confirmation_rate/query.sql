-- Write your MySQL query statement below

SELECT s.user_id,
ROUND(
    IF(
        --condition
        COUNT(c.action) = 0, 
        --true
        0, 
        --false
        SUM(c.action = 'confirmed') / COUNT(c.action)
    ),
    --Redondea a 2 decimales
    2
) AS confirmation_rate
FROM signups AS s
LEFT JOIN confirmations AS c
USING(user_id)
GROUP BY user_id
ORDER BY confirmation_rate;