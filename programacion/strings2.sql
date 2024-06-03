set serveroutput on;

declare
    
    saludo varchar2(12) := 'Hola a todos';
    
begin
    dbms_output.put_line(UPPER(saludo));
    
    
end;
