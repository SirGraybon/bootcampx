SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, sum(completed_at - started_at)
FROM teachers JOIN assistance_requests on teachers.id = teacher_id
JOIN students on student_id = students.id
Join assignments on assignment_id = assignments.id
GROUP BY teachers.name, students.name, assignments.name
ORDER BY sum(completed_at - started_at);