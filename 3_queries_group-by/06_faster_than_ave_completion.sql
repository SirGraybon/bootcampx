SELECT students.name as student, AVG(assignment_submissions.duration) as Average_assignment_duration, AVG(assignments.duration) as average_etimated_duration 
from assignment_submissions 
join assignments on assignment_id = assignments.id 
JOIN students on student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY AVG(assignment_submissions.duration);