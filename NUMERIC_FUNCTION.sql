-- CREATE TABLE

CREATE TABLE marks_data (
    id NUMBER,
    marks NUMBER
);

-- INSERT VALUES

INSERT INTO marks_data VALUES (1, 78.65);
INSERT INTO marks_data VALUES (2, 92.40);
INSERT INTO marks_data VALUES (3, -45.75);
INSERT INTO marks_data VALUES (4, 63.25);

COMMIT;

-- DISPLAY TABLE

SELECT * FROM marks_data;


-- 1. ROUND

SELECT marks, ROUND(marks) AS rounded_marks
FROM marks_data;


-- 2. CEIL

SELECT marks, CEIL(marks) AS ceil_marks
FROM marks_data;


-- 3. FLOOR

SELECT marks, FLOOR(marks) AS floor_marks
FROM marks_data;


-- 4. ABS

SELECT marks, ABS(marks) AS absolute_marks
FROM marks_data;


-- 5. MOD

SELECT marks, MOD(marks, 10) AS remainder
FROM marks_data;


-- 6. POWER

SELECT marks, POWER(marks, 2) AS square_marks
FROM marks_data;


-- 7. SQRT

SELECT marks, SQRT(ABS(marks)) AS square_root
FROM marks_data;


-- 8. TRUNC

SELECT marks, TRUNC(marks) AS truncated_marks
FROM marks_data;
