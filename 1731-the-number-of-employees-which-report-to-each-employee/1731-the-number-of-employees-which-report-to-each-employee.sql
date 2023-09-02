# Write your MySQL query statement below
select e.employee_id, e.name, count(distinct r.employee_id) as reports_count, round(avg(r.age), 0) as average_age
from Employees e
left join Employees r on e.employee_id = r.reports_to
group by e.employee_id, e.name
having reports_count > 0
order by e.employee_id;
