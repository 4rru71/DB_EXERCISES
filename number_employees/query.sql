--t1 representa a los managers.
--t2 representa a los empleados que reportan a t1.

SELECT 
    t1.employee_id, 
    t1.name, 
    COUNT(t2.employee_id) AS reports_count, 
    ROUND(AVG(t2.age)) AS average_age
FROM employees t1
JOIN employees t2
    ON t1.employee_id = t2.reports_to
GROUP BY t1.employee_id
ORDER BY t1.employee_id;