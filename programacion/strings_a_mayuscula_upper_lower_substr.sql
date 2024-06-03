set serveroutput on;

declare
    
    saludo varchar2(30) := '####Hola a # todos####';
    
begin
   
   dbms_output.put_line(rtrim(saludo,'#')); --elimina los caracteres indicados a la derecha
   dbms_output.put_line(ltrim(saludo,'#')); --lo mismo a la izquierda
   
   dbms_output.put_line(trim('#' from saludo)); --elimina de la izquierda y de la derecha
      
end;
