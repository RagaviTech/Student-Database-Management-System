
USE student_management;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
INSERT INTO students VALUES
(1, 'Arun', 'arun@gmail.com', 'CSE'),
(2, 'Priya', 'priya@gmail.com', 'CSE'),
(3, 'Rahul', 'rahul@gmail.com', 'IT'),
(4, 'Divya', 'divya@gmail.com', 'ECE'),
(5, 'Karthik', 'karthik@gmail.com', 'CSE'),
(6, 'Meena', 'meena@gmail.com', 'IT'),
(7, 'Vijay', 'vijay@gmail.com', 'ECE'),
(8, 'Anitha', 'anitha@gmail.com', 'CSE'),
(9, 'Sanjay', 'sanjay@gmail.com', 'IT'),
(10, 'Swetha', 'swetha@gmail.com', 'ECE'),
(11, 'Hari', 'hari@gmail.com', 'CSE'),
(12, 'Nisha', 'nisha@gmail.com', 'IT');
INSERT INTO students VALUES
(1, 'Arun', 'arun@gmail.com', 'CSE'),
(2, 'Priya', 'priya@gmail.com', 'CSE'),
(3, 'Rahul', 'rahul@gmail.com', 'IT'),
(4, 'Divya', 'divya@gmail.com', 'ECE'),
(5, 'Karthik', 'karthik@gmail.com', 'CSE'),
(6, 'Meena', 'meena@gmail.com', 'IT'),
(7, 'Vijay', 'vijay@gmail.com', 'ECE'),
(8, 'Anitha', 'anitha@gmail.com', 'CSE'),
(9, 'Sanjay', 'sanjay@gmail.com', 'IT'),
(10, 'Swetha', 'swetha@gmail.com', 'ECE'),
(11, 'Hari', 'hari@gmail.com', 'CSE'),
(12, 'Nisha', 'nisha@gmail.com', 'IT');
INSERT INTO courses VALUES
(101, 'Database Management Systems', 4),
(102, 'Java Programming', 4),
(103, 'Web Development', 3),
(104, 'Computer Networks', 3),
(105, 'Data Analytics', 4);
SELECT * FROM courses;
INSERT INTO marks VALUES
(1, 1, 101, 85),
(2, 1, 102, 78),
(3, 1, 103, 91),
(4, 2, 101, 92),
(5, 2, 102, 88),
(6, 2, 105, 95),
(7, 3, 101, 76),
(8, 3, 103, 84),
(9, 3, 104, 80),
(10, 4, 102, 89),
(11, 4, 104, 93),
(12, 4, 105, 87),
(13, 5, 101, 96),
(14, 5, 102, 90),
(15, 5, 105, 94);
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM marks;
SELECT 
    s.student_name,
    c.course_name,
    m.marks
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN courses c ON m.course_id = c.course_id;
SELECT 
    c.course_name,
    ROUND(AVG(m.marks), 2) AS average_marks
FROM courses c
JOIN marks m ON c.course_id = m.course_id
GROUP BY c.course_id, c.course_name;
SELECT 
    s.student_name,
    c.course_name,
    m.marks
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN courses c ON m.course_id = c.course_id
ORDER BY m.marks DESC
LIMIT 1;
SELECT 
    s.student_name,
    c.course_name,
    m.marks
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN courses c ON m.course_id = c.course_id
WHERE m.marks > 85;
SELECT 
    c.course_name,
    MAX(m.marks) AS highest_mark
FROM courses c
JOIN marks m ON c.course_id = m.course_id
GROUP BY c.course_id, c.course_name;
SELECT 
    s.student_name,
    ROUND(AVG(m.marks), 2) AS average_marks
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.student_name
ORDER BY average_marks DESC;
SELECT 
    s.student_name,
    m.marks
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN courses c ON m.course_id = c.course_id
WHERE c.course_name = 'Database Management Systems';
INSERT INTO students
VALUES (13, 'Ravi', 'ravi@gmail.com', 'CSE');
SELECT * FROM students
WHERE student_id = 13;
UPDATE students
SET department = 'IT'
WHERE student_id = 13;
SELECT * FROM students
WHERE student_id = 13;
DELETE FROM students
WHERE student_id = 13;
SELECT * FROM students
WHERE student_id = 13;