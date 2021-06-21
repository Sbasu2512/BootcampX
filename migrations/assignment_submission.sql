CREATE TABLE assignment_submission(
id SERIAL PRIMARY KEY NOT NULL,
assignment_id INTEGER REFERENCES assignment(id) ON DELETE CASCADE,
student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
duration INTEGER,
submission_date DATE
);