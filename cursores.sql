 /*
 UN CURSOR es un puntero formado por registros
 son segmentos de memoria
 existen 2 tipos.
 1 implicitos, se devuelve 1 solo registro 'insert,delete,update'
 2 explicito, retorna varios registros
 
 ATRIBUOS
 
 %ISOPEN devuelce true si el cursor está abierto
 %FOUND si el registro fue procesado
 %NODFOUND devuelve true si no pudo ser procesado
 
 %ROWCOUNT
 
 */
 /*drop table empleados;

 create table empleados(
  documento char(8),
  apellido varchar2(30),
  nombre varchar2(30),
  domicilio varchar2(30),
  seccion varchar2(20),
  sueldo number(8,2)
 );
 insert into empleados values('22222222','Acosta','Ana','Avellaneda 11','Secretaria',1800);
 insert into empleados values('23333333','Bustos','Betina','Bulnes 22','Gerencia',5000);
 insert into empleados values('24444444','Caseres','Carlos','Colon 333','Contabilidad',3000);
 insert into empleados values('32323255','Gonzales','Miguel','Calle 4ta No.90','Contabilidad',8000);
 insert into empleados values('56565555','Suarez','Tomas','Atarazana 78','Cobros',1500);*/

set SERVEROUTPUT on; 
  --creacion de cursor implicito

declare
  filas number(2);
begin

    update empleados set sueldo = sueldo + 500 where sueldo >= 3000;
    
    if sql%notfound then
        DBMS_OUTPUT.PUT_LINE('No hay empleados disponibles');
    elsif sql%found then
        filas:= sql%rowcount;
        DBMS_OUTPUT.PUT_LINE(filas || ' empleados actualizados!!!');
    end if;
        

end;
 
--select * from empleados
 
 