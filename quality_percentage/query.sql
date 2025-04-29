--Write your MySQL query statement below

SELECT query_name, 
    ROUND(
        SUM(rating/position) / COUNT(*),
        2
    ) AS quality, 
    ROUND(
        SUM(IF(rating<3,1,0)) / COUNT(*)*100,
        2
    ) AS poor_query_percentage
FROM queries
GROUP BY query_name;

--Other option
SELECT query_name, 
    ROUND(
        AVG(rating / position), 
        2
    ) AS quality,
    ROUND(
        SUM(IF(rating<3,1,0)) / COUNT(*)*100,
        2
    ) AS poor_query_percentage
FROM queries
GROUP BY query_name;
