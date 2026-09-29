DECLARE
    n NUMBER := &n;
    temp NUMBER;
    digit NUMBER;
    reverse_num NUMBER := 0;
BEGIN
    temp := n;

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        reverse_num := (reverse_num * 10) + digit;
        temp := TRUNC(temp / 10);
    END LOOP;

    IF reverse_num = n THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is a Palindrome Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is not a Palindrome Number');
    END IF;
END;
/
