SELECT teachers.name AS teacher, 'JUL02' as cohort
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name
HAVING COUNT(assistance_requests) > 0
ORDER BY teachers.name

