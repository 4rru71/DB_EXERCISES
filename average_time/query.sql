/* Write your MySQL query statement below*/
-- ROUND(AVG(timestamp),3) 

SELECT 
  t1.machine_id,
  ROUND(AVG(t2.timestamp - t1.timestamp), 3) AS processing_time
FROM 
  (SELECT * FROM activity WHERE activity_type = 'start') AS t1
JOIN 
  (SELECT * FROM activity WHERE activity_type = 'end') AS t2
ON 
  t1.machine_id = t2.machine_id 
  AND t1.process_id = t2.process_id
GROUP BY 
  machine_id;