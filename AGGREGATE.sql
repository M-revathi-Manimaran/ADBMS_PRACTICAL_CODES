-- CREATE TABLE

CREATE TABLE student_marks (
    student_id NUMBER,
    student_name VARCHAR2(30),
    marks NUMBER,
    dept_id NUMBER
);

-- INSERT VALUES

INSERT INTO student_marks VALUES (1, 'Revathi', 85, 101);
INSERT INTO student_marks VALUES (2, 'Rajesree', 72, 102);
INSERT INTO student_marks VALUES (3, 'Udhaya', 90, 101);
INSERT INTO student_marks VALUES (4, 'Priya', 65, 103);
INSERT INTO student_marks VALUES (5, 'Divya', 78, 102);

COMMIT;

-- DISPLAY TABLE

SELECT * FROM student_marks;


-- 1. COUNT
SELECT COUNT(*) AS total_students
FROM student_marks;


-- 2. SUM
SELECT SUM(marks) AS total_marks
FROM student_marks;


-- 3. AVG
SELECT AVG(marks) AS average_marks
FROM student_marks;


-- 4. MAX
SELECT MAX(marks) AS highest_marks
FROM student_marks;


-- 5. MIN
SELECT MIN(marks) AS lowest_marks
FROM student_marks;


-- 6. ALL AGGREGATE FUNCTIONS TOGETHER

SELECT COUNT(*) AS total_students,
       SUM(marks) AS total_marks,
       AVG(marks) AS average_marks,
       MAX(marks) AS highest_marks,
       MIN(marks) AS lowest_marks
FROM student_marks;
