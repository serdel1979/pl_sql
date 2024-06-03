set serveroutput on

declare

    num number(2) := 50;

begin

    if(num = 10)then
        dbms_output.put_line('el valor de num es 10');
    elsif(num = 20) then
        dbms_output.put_line('el valor de num es 20');
    elsif(num = 30) then
        dbms_output.put_line('el valor de num es 30');
    else
        dbms_output.put_line('Ningun valor se encontró');
    end if;
    
    dbms_output.put_line('el valor de num es '|| num);

end;