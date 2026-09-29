CREATE OR REPLACE PROCEDURE reverse_string(str IN VARCHAR2) IS
reversed_str VARCHAR2(100) := '';
len NUMBER := LENGTH(str);
BEGIN
FOR i IN REVERSE 1..len LOOP
reversed_str := reversed_str || SUBSTR(str, i, 1);
END LOOP;
DBMS_OUTPUT.PUT_LINE('Reversed String: ' || reversed_str);
END;
