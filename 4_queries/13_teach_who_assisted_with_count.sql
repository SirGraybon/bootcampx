SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.*)
FROM assistance_requests join teachers on teacher_id = teachers.id
Join students on student_id = students.id
JOIN cohorts on cohort_id = cohorts.id

WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
order by teachers.name
