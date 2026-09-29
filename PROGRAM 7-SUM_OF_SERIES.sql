CREATE OR REPLACE PROCEDURE sum_of_series(p_n IN NUMBER) IS
total NUMBER := 0;
BEGIN
total:=(p_n *(p_n + 1))/2;
dbms_output.put_line('Sum of series 1 to ' || p_n || ' is: ' || total);
END;
