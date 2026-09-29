DECLARE
    num NUMBER := &num;
BEGIN
    IF MOD(num, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is EVEN');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is ODD');
    END IF;
END;
/
