# Write your MySQL query statement below

WITH first_login AS (
    SELECT player_id, MIN(event_date) AS first_date
    FROM activity
    GROUP BY player_id
)

SELECT 
    ROUND(
        COUNT(DISTINCT a.player_id) / (SELECT COUNT(*) FROM first_login), 
        2
    ) AS fraction
FROM activity a
JOIN first_login f 
  ON a.player_id = f.player_id
WHERE DATEDIFF(a.event_date, f.first_date) = 1;