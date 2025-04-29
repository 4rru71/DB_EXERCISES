/* Write your MySQL query statement below*/

SELECT t1.name 
FROM employee t1
INNER JOIN employee t2
ON t1.id = t2.managerid
GROUP BY t1.id
HAVING COUNT(*) >= 5;