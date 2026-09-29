declare 
first number:=0; 
second number:=1; 
a number; 
n number:= :Enter_no_of_terms:; 
i number; 
begin 
dbms_output.put_line('Series:'); 
dbms_output.put_line(first); 
dbms_output.put_line(second); 
for i in 2..n 
loop 
a:= first+second; 
first:=second; 
second:=a; 
dbms_output.put_line(a); 
end loop; 
end;
