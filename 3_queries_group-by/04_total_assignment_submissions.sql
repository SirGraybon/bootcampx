SELECT cohorts.name, count(assignment_submissions.*) as total_submissions
FROM cohorts 
JOIN students ON cohorts.id = cohort_id 
JOIN assignment_submissions on students.id = student_id 
JOIN assignments on assignment_id = assignments.id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.*) DESC;