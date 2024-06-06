--son disparadores que ocurren cuando sucede un evento
--no reciben ni retornan parametros ni generan resultados
--se clasifican en before, after, por evento o nivel
 
 create table empleados(
  documento char(8),
  apellido varchar2(30),
  nombre varchar2(30),
  seccion varchar2(20)
 );

--INSERTS
 insert into empleados values('22333444','ACOSTA','Ana','Secretaria');
 insert into empleados values('22777888','DOMINGUEZ','Daniel','Secretaria');
 insert into empleados values('22999000','FUENTES','Federico','Sistemas');
 insert into empleados values('22555666','CASEROS','Carlos','Contaduria');
 insert into empleados values('23444555','GOMEZ','Gabriela','Sistemas');
 insert into empleados values('23666777','JUAREZ','Juan','Contaduria');
 
 
 create or replace trigger tr_ingresolibros
 before insert
 on libros
 begin
    insert into control values(user, sysdate);
 end tr_ingresolibros;
 
 
 select * from control;
 
 insert into libros values(321121,'la loma','juan','la antartida',3211);
 
 
 
 