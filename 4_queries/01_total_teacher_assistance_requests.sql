SELECT teachers.name as name, count(assistance_requests.*) FROM teachers 
JOIN assistance_requests on teachers.id = teacher_id 
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name