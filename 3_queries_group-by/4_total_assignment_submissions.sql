SELECT cohorts.name as cohort_name, count(assignment_submissions.*) as total_submissions
from cohorts
JOIN students on students.cohort_id = cohorts.id
JOIN assignment_submissions on students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;