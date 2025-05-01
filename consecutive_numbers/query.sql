--Write your MySQL query statement below

SELECT DISTINCT (t1.num) AS ConsecutiveNums 
FROM logs t1
JOIN logs t2 ON t1.id = t2.id - 1
JOIN logs t3 ON t1.id = t3.id - 2
WHERE t1.num = t2.num AND t2.num = t3.num;

--Other solution
SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1, Logs l2, Logs l3
WHERE l1.num = l2.num
  AND l2.num = l3.num
  AND l1.id = l2.id - 1
  AND l2.id = l3.id - 1;