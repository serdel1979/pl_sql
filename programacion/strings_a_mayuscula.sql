set serveroutput on;

declare
    
    saludo varchar2(12) := 'HOLA a todos';
    
begin
    dbms_output.put_line(UPPER(saludo));
    dbms_output.put_line(LOWER(saludo));
    
    dbms_output.put_line(SUBSTR(saludo,3,5)); --obtiene un substring desde el caracter 3, tomando 5 caracteres
    
    
    dbms_output.put_line(INSTR(saludo,'H')); --indica la posicion del caracter en el string, 0 si no está
    
    
end;
