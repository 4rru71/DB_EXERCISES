# Write your MySQL query statement below


SELECT 
DATE_FORMAT(trans_date, '%Y-%m') AS month,
country,
COUNT(trans_date) AS trans_count,
SUM(IF(state="approved",1,0)) AS approved_count,
SUM(amount) AS trans_total_amount,
SUM(IF(state="approved",amount,0)) AS approved_total_amount  
FROM transactions 
GROUP BY month, country;

--Use laLEFTfunción para obtener la parte YYYY-MM de trans_date. 
--La función LEFT() extrae un número de caracteres de una cadena (empezando por la izquierda).
SELECT 
    LEFT(trans_date, 7) AS month,
    country,
    COUNT(trans_date) AS trans_count,
    SUM(state = 'approved') AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM((state = 'approved') * amount) AS approved_total_amount 
FROM transactions 
GROUP BY month, country;
