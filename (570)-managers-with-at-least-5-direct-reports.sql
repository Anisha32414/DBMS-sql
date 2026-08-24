# Write your MySQL query statement below
select m.name as name from
Employee e JOIN Employee m
ON e.managerId=m.id
group by e.managerId
having count(e.managerId)>=5;
