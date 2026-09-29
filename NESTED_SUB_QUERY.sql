-- create table

create table student_marks (
    student_id number,
    student_name varchar2(30),
    marks number,
    dept_id number
);

-- insert values

insert into student_marks values (1, 'Revathi', 85, 101);
insert into student_marks values (2, 'Rajesree', 72, 102);
insert into student_marks values (3, 'Udhaya', 90, 101);
insert into student_marks values (4, 'Priya', 65, 103);
insert into student_marks values (5, 'Divya', 78, 102);

commit;

-- display all records

select * from student_marks;


-- 1. NESTED SUBQUERY
-- Students whose marks are greater than average marks

select student_id, student_name, marks
from student_marks
where marks > (
    select avg(marks)
    from student_marks
);


-- 2. NESTED SUBQUERY
-- Students who belong to the same department as Revathi

select student_id, student_name, dept_id
from student_marks
where dept_id = (
    select dept_id
    from student_marks
    where student_name = 'Revathi'
);


-- 3. NESTED SUBQUERY
-- Student with the highest marks

select student_id, student_name, marks
from student_marks
where marks = (
    select max(marks)
    from student_marks
);


-- 4. NESTED SUBQUERY
-- Student with the lowest marks

select student_id, student_name, marks
from student_marks
where marks = (
    select min(marks)
    from student_marks
);
