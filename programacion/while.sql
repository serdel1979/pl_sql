set serveroutput on;

declare
    
    numero number(2) := 0;
    resultado number;
    
begin
   
    while numero <= 5 loop
         resultado := 3*numero;
         dbms_output.put_line('3x '||numero||' = '||resultado);
         numero:=numero+1;
    end loop;
      
end;
