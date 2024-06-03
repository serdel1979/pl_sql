set serveroutput on;

declare
    nombre varchar2(20);
    direccion varchar2(30);
    detalles clob;
    eleccion char(1);
    
begin
    nombre := 'Pedro popo';
    direccion := 'Calle 7 n 257';
    detalles := 'Este tipo de variable es de gran almacenamiento, pero gran, zarpado mal';
    eleccion:='y';
    
    if eleccion = 'y' then
        dbms_output.put_line(nombre);
        dbms_output.put_line(direccion);
        dbms_output.put_line(detalles);
    end if;

end;
