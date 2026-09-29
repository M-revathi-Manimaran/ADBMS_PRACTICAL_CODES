set serveroutput on;

create table employee (
    emp_id number,
    emp_name varchar2(30),
    salary number
);

insert into employee values (101, 'Arun', 20000);
insert into employee values (102, 'Priya', 25000);

create or replace trigger employee_trigger
after insert or update or delete on employee
begin
    dbms_output.put_line('Trigger Fired Successfully');
    dbms_output.put_line('Record Action Completed');
end;
/

-- action
update employee
set salary = 30000
where emp_id = 101;

commit;

select * from employee;
