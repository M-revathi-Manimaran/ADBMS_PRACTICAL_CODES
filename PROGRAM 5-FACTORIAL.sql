DECLARE 
 n NUMBER := :Enter_Number; 
 f NUMBER := 1; 
BEGIN 
 
 WHILE n > 1 LOOP 
 f := f * n; 
 n := n - 1; 
 END LOOP; 
 DBMS_OUTPUT.PUT_LINE('Result: ' || f); 
END;
