set SERVEROUTPUT on

create or replace function fn_costos(valor number)
return varchar
is
    costo varchar(20);
    begin
        costo := '';
        if valor <= 500 then
            costo := 'economico';
        else
            costo := 'costoso';
        end if;
        return costo;
    end;
