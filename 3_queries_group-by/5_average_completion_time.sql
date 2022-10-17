SELECT students.name, AVG(assignment_submissions.duration) as average_assignment_duration
FROM students JOIN assignment_submissions 
ON students.id = assignment_submissions.student_id
GROUP BY students.id
HAVING students.end_date IS NULL
ORDER BY average_assignment_duration desc;