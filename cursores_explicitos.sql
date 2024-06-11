--cursor explicito
set serveroutput on;

declare

    v_docu empleados.documento%TYPE;
    v_nom empleados.nombre%TYPE;
    v_ape empleados.apellido%TYPE;
    v_sueldo empleados.sueldo%TYPE;
   
   --aca se crea un cursor explicito
    cursor c_cursor2 is
        select documento,nombre,apellido,sueldo
        from empleados
        where documento=22222222;

begin
    open c_cursor2;
    fetch c_cursor2 into v_docu,v_nom,v_ape,v_sueldo;
    close c_cursor2;
    
    dbms_output.put_line(v_docu || ' documento');
    dbms_output.put_line(v_nom || ' nombre');
    dbms_output.put_line(v_ape || ' apellido');
    dbms_output.put_line(v_sueldo || ' sueldo');
    
    
end;
 
