# Write your MySQL query statement below
select s.student_id, s.student_name, j.subject_name,
    coalesce(count(e.subject_name), 0) as attended_exams
from Students s
cross join Subjects j
left join Examinations e on s.student_id = e.student_id and j.subject_name = E.subject_name
group by s.student_id, j.subject_name
order by s.student_id, j.subject_name;
