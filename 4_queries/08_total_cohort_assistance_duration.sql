SELECT cohorts.name, avg(SELECT sum(completed_at - started_at) as AVG_TIME
FROM assistance_requests JOIN students on student_id = students.id
JOIN cohorts on cohort_id = cohorts.id
group by cohorts.name
order by AVG_TIME)

;