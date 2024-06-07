--son disparadores que ocurren cuando sucede un evento
--no reciben ni retornan parametros ni generan resultados
--se clasifican en before, after, por evento o nivel

CREATE OR REPLACE TRIGGER tr_UPDATEEMPLEADOS
BEFORE UPDATE
ON EMPLEADOS
FOR EACH ROW --se dispara el triger en cada insercion
BEGIN
    INSERT INTO control VALUES (USER, SYSDATE);
END tr_UPDATEEMPLEADOS;

--drop table empleados
  create table empleados(
  documento char(8),
  apellido varchar2(20),
  nombre varchar2(20),
  seccion varchar2(30),
  sueldo number(8,2)
 );
--creacion tala control
 create table control(
  usuario varchar2(30),
  fecha date
 );

--ingreso de datos
 insert into empleados values('22333444','ACOSTA','Ana','Secretaria',500);
 insert into empleados values('22777888','DOMINGUEZ','Daniel','Secretaria',560);
 insert into empleados values('22999000','FUENTES','Federico','Sistemas',680);
 insert into empleados values('22555666','CASEROS','Carlos','Contaduria',900);
 insert into empleados values('23444555','GOMEZ','Gabriela','Sistemas',1200);
 insert into empleados values('23666777','JUAREZ','Juan','Contaduria',1000);


select * from control

select * from empleados

update empleados set sueldo = 1500 where documento = '22555666'

--TRUNCATE TABLE CONTROL;
 
 