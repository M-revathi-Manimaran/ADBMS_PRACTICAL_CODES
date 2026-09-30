-- employee table

create table employee (
    id number,
    name varchar2(20),
    department varchar2(30),
    salary number
);

insert into employee values (101, 'arun', 'computer', 25000);
insert into employee values (102, 'priya', 'maths', 28000);
insert into employee values (103, 'kumar', 'science', 30000);

select * from employee;


-- implicit cursor

declare
    total_rows number;
begin
    update employee
    set salary = salary + 1000;

    if sql%notfound then
        dbms_output.put_line('no employees updated');
    else
        total_rows := sql%rowcount;
        dbms_output.put_line(total_rows || ' employees updated');
    end if;
end;
/


-- explicit cursor

declare
    e_id employee.id%type;
    e_name employee.name%type;
    e_dept employee.department%type;

    cursor c_employee is
        select id, name, department from employee;
begin
    open c_employee;

    loop
        fetch c_employee into e_id, e_name, e_dept;

        exit when c_employee%notfound;

        dbms_output.put_line(e_id || ' ' || e_name || ' ' || e_dept);
    end loop;

    close c_employee;
end;
/
