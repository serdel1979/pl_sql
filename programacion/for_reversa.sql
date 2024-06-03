set serveroutput on;

declare
    
    
begin
   
   for f in reverse 2..5 loop
         dbms_output.put_line('f ->'||f);
   end loop;

         dbms_output.put_line('De uno a diez');

   for f in reverse 1..10 loop
         dbms_output.put_line('2 x '||f||' = '||(2*f));
   end loop;
   
end;
