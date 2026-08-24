# Write your MySQL query statement below
SELECT e2.name as Employee 
from 
Employee as e1 JOIN Employee as e2
ON e1.id=e2.managerId 
WHERE e1.salary<e2.salary;
