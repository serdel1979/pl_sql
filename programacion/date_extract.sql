create or replace function fn_trimestre(fecha date)
return varchar2
is
    mes varchar2(20);
    trimestre number;
    begin
    
    mes:= extract(MONTH from fecha);
    trimestre:= 0;
    
    case mes
        when 1 then trimestre := 1;
        when 2 then trimestre := 1;
        when 3 then trimestre := 1;
        when 4 then trimestre := 2;
        when 5 then trimestre := 2;
        when 6 then trimestre := 2;
        when 7 then trimestre := 3;
        when 8 then trimestre := 3;
        when 9 then trimestre := 3;
        else
         trimestre := 4;
     end case;
     return trimestre;
    end;
    
    
    
select fn_trimestre(TO_DATE('10/5/1990','dd/mm/yyyy')) as trimestre from dual;    
