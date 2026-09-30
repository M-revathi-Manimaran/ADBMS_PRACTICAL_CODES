set serveroutput on;

declare
    text varchar2(100) := '&text';
    reverse_text varchar2(100) := '';
begin
    for i in reverse 1..length(text) loop
        reverse_text := reverse_text || substr(text, i, 1);
    end loop;

    dbms_output.put_line('Given String: ' || text);
    dbms_output.put_line('Reverse: ' || reverse_text);
end;
/
