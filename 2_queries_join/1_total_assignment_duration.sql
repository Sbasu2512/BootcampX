SELECT sum(assignment_submissions.duration) as total duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibhrahim Schimmel';