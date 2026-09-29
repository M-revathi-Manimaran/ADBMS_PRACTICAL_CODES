declare
    n number := &n;
    temp number;
    digit number;
    sum number := 0;
    digits number;
begin
    temp := n;
    digits := length(to_char(n));

    while temp > 0 loop
        digit := mod(temp, 10);
        sum := sum + power(digit, digits);
        temp := trunc(temp / 10);
    end loop;

    if sum = n then
        dbms_output.put_line(n || ' is an Armstrong Number');
    else
        dbms_output.put_line(n || ' is not an Armstrong Number');
    end if;
end;
/
