# Write your MySQL query statement below
SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM Insurance
WHERE (lat,lon) IN (
    SELECT lat,lon from Insurance 
    GROUP BY lat,lon
    HAVING count(*)=1
)
AND tiv_2015 IN(
    SELECT tiv_2015 
    FROM Insurance 
    GROUP BY tiv_2015
    HAVING count(*)>1
);
