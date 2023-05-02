SELECT count(assistance_requests.*), students.name as name 
FROM students 
JOIN assistance_requests on students .id = student_id 
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name