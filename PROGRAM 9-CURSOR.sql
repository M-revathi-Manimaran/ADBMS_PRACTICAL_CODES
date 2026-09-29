-- employee table

create table employee (
    emp_id number,
    emp_name varchar2(20),
    department varchar2(20),
    salary number
);

insert into employee values (101, 'arun', 'it', 20000);
insert into employee values (102, 'priya', 'hr', 25000);
insert into employee values (103, 'kumar', 'sales', 30000);

select * from employee;


-- implicit cursor

declare
    total_rows number;
begin
    update employee
    set salary = salary + 1000;

    if sql%notfound then
        dbms_output.put_line('no employees selected');
    else
        total_rows := sql%rowcount;
        dbms_output.put_line(total_rows || ' employees updated');
    end if;
end;
/


-- explicit cursor

declare
    e_id employee.emp_id%type;
    e_name employee.emp_name%type;
    e_dept employee.department%type;

    cursor c_employee is
        select emp_id, emp_name, department
        from employee;

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
