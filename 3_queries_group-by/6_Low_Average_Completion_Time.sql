SELECT students.name, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration
FROM students 
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
GROUP BY students.id
HAVING students.end_date IS NULL 
AND AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;