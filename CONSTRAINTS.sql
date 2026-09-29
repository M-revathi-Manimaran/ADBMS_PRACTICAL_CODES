-- create first table

create table course (
    course_id number,
    course_name varchar2(30)
);

-- create second table

create table student_details (
    student_id number,
    student_name varchar2(30),
    course_id number
);

-- primary key

alter table course
add constraint pk_course primary key (course_id);

-- unique key

alter table course
add constraint uq_course_name unique (course_name);

-- foreign key

alter table student_details
add constraint fk_student_course
foreign key (course_id)
references course(course_id);

-- insert records

insert into course values (1, 'java');
insert into course values (2, 'python');
insert into course values (3, 'cloud computing');

insert into student_details values (101, 'revathi', 1);
insert into student_details values (102, 'priya', 2);
insert into student_details values (103, 'divya', 3);

-- display records

select * from course;
select * from student_details;
