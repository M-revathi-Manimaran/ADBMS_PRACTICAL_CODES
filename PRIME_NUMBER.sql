DECLARE
    n NUMBER := &n;
    i NUMBER := 2;
    flag NUMBER := 0;
BEGIN
    WHILE i <= n / 2 LOOP
        IF MOD(n, i) = 0 THEN
            flag := 1;
            EXIT;
        END IF;

        i := i + 1;
    END LOOP;

    IF n <= 1 THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is not a Prime Number');
    ELSIF flag = 0 THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is a Prime Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is not a Prime Number');
    END IF;
END;
/
