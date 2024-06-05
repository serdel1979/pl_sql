set SERVEROUTPUT on

create or replace function fn_prueba(valor number)
return number
is
begin
    return valor * 2;
end;

select fn_prueba(20) as cuadrado from dual;
