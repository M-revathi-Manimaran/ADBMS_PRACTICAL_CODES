set serveroutput on;

declare
    n number := &n;
    a number := 0;
    b number := 1;
    c number;
begin
    dbms_output.put_line('Fibonacci Series:');

    for i in 1..n loop
        dbms_output.put_line(a);

        c := a + b;
        a := b;
        b := c;
    end loop;
end;
/
