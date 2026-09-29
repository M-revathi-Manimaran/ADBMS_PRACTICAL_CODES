DECLARE
    a NUMBER := &a;
    b NUMBER := &b;
    result NUMBER;
BEGIN
    -- Arithmetic Operators

    DBMS_OUTPUT.PUT_LINE('Addition = ' || (a + b));
    DBMS_OUTPUT.PUT_LINE('Subtraction = ' || (a - b));
    DBMS_OUTPUT.PUT_LINE('Multiplication = ' || (a * b));
    DBMS_OUTPUT.PUT_LINE('Division = ' || (a / b));
    DBMS_OUTPUT.PUT_LINE('Remainder = ' || MOD(a, b));

    -- Relational Operators

    IF a < b THEN
        DBMS_OUTPUT.PUT_LINE('a is less than b');
    END IF;

    IF a <> b THEN
        DBMS_OUTPUT.PUT_LINE('a is not equal to b');
    END IF;

    -- Logical Operator

    IF a > 0 OR b > 0 THEN
        DBMS_OUTPUT.PUT_LINE('At least one number is positive');
    END IF;

    -- Assignment Operator

    result := a * b;
    DBMS_OUTPUT.PUT_LINE('Assigned value = ' || result);
END;
/
