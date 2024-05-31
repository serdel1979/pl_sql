 create table empleados(
  nombre varchar2(30),
  documento char(8),
  domicilio varchar2(30),
  seccion varchar2(20),
  sueldo number(6,2),
  cantidadhijos number(2),
  fechaingreso date,
  primary key(documento)
 );


 insert into empleados
  values('Juan Perez','22333444','Colon 123','Gerencia',5000,2,to_date('10/10/1980','dd/mm/yyyy'));
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0,to_date('15/08/1998','dd/mm/yyyy'));
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1,null);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3,null);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0,to_date('26/08/2000','dd/mm/yyyy'));
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1,to_date('25/09/2001','dd/mm/yyyy'));
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3,null);
 insert into empleados
  values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4,to_date('14/12/2000','dd/mm/yyyy'));
 insert into empleados
  values('Andres Costa','28444555',default,'Secretaria',null,null,to_date('08/08/1990','dd/mm/yyyy'));

select * from empleados;


select max(sueldo) as maximo, min(sueldo) as minimo from empleados;

select min(sueldo) as minimo from empleados;

select max(cantidadhijos) as hijos from empleados
where nombre like '%Perez%';

select avg(sueldo) as "promedio de sueldo"  from empleados
where seccion = 'Secretaria';

select sum(sueldo) as "suma" from empleados where seccion = 'Sistemas';

select min(fechaingreso) from empleados;















