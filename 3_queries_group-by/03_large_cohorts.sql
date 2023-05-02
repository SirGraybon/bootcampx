SELECT cohorts.name, COUNT(students.*)  FROM students JOIN cohorts ON cohort_id = cohorts.id group by cohorts.name HAVING COUNT(students.*) >= 18 ORDER BY COUNT(students.*)