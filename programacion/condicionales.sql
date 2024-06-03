set serveroutput on

declare

    a number(2) := 55;
    b number(2) := 99;

begin

    if a < b then
        dbms_output.put_line(a || ' es menor que ' || b);
    else
        dbms_output.put_line(b || ' es menor que ' || a);
    end if;

end;