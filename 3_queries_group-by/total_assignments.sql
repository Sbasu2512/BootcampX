SELECT cohort.name as cohort , count(assignment_submission.*) AS total_submissions
FROM assignment_submission
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id 
GROUP BY cohorts.name
ORDER BY count(assignment_submission.*)
;