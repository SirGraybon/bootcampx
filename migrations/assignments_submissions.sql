CREATE TABLE assignments(
  id SERIAL PRIMARY KEY NOT NULL,  
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
  );

  create TABLE assignment_submissions(
    id SERIAL PRIMARY KEY NOT NULL,
    assignment_id INTEGER REFERENCEs assignments(id) ON DELETE CASCADE,
    student_id INTEGER REFERENCEs students(id) ON DELETE CASCADE,
    duration INTEGER,
    submission_date DATE
  )