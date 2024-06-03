set serveroutput on;

declare
    
    numero number(2);
    
begin
   
   for numero in 17..20 loop
     dbms_output.put_line('-> '||numero);
   end loop;
   
end;
