DECLARE
    a NUMBER := &a;
    b NUMBER := &b;
    gcd NUMBER := 1;
    i NUMBER;
BEGIN
    FOR i IN 1..LEAST(a, b) LOOP
        IF MOD(a, i) = 0 AND MOD(b, i) = 0 THEN
            gcd := i;
        END IF;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('GCD = ' || gcd);
END;
/
