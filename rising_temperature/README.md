Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.

~~~~~~~~
Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order.
~~~~~~~~
NOTA
Ahora, entre esos dos días consecutivos, solo queremos los casos donde la temperatura de t1 (hoy) sea mayor que la de t2 (ayer).