set SERVEROUT on

DECLARE
--los arrays empiezan en el indice 1
--son unidimensionales
    type matriz_nombres is array(5) of varchar2(20);
    type matriz_edad is array(5) of integer;
    nombres matriz_nombres;
    edad matriz_edad;
    total integer;
begin
    nombres := matriz_nombres('lolo','pepe','pipo','papo','pepo');
    edad := matriz_edad(20,50,35,15,65);
    total := nombres.count;
    for i in 1..total loop
        DBMS_OUTPUT.PUT_LINE ('Nombre '||nombres(i)||' tiene '||edad(i)||' años de edad. ');
    end loop;
end;


















