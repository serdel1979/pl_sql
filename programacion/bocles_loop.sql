set serveroutput on

declare

    valor number(2) := 10;

begin

    loop
        DBMS_OUTPUT.PUT_LINE (valor);
        valor := valor + 10;
        
        if valor > 50 then
            exit;
        end if;
    end loop;
    DBMS_OUTPUT.PUT_LINE('valor final '|| valor);
end;