set SERVEROUT on

DECLARE
--los arrays empiezan en el indice 1
--son unidimensionales
    type paises is array(5) of varchar2(20);
    nombre paises;
begin

    nombre := paises('Argentina','Mexico','Brasil','Peru','Bolivia');
    
    for i in 1..5 loop
    
        DBMS_OUTPUT.PUT_LINE ('Nombre de país: '||nombre(i));
    
    end loop;

end;


















