# Write your MySQL query statement below
SELECT d.name as Department,
e.name as Employee,
e.salary as Salary
FROM(
    SELECT * , DENSE_RANK() OVER(
        PARTITION BY departmentId
        ORDER BY salary DESC
    ) AS salary_rank
    FROM Employee
) e
JOIN Department d ON 
e.departmentId=d.id
WHERE e.salary_rank<=3;
