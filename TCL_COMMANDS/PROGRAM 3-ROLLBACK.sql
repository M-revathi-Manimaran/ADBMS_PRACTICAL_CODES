create table student2 (
    sid number,
    sname varchar2(30)
);

insert into student2 values (201, 'Arun');
insert into student2 values (202, 'Kavi');

delete from student2
where sid = 202;

rollback;

select * from student2;
