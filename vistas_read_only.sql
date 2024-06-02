drop table clientes;
create table clientes(
  nombre varchar2(40),
  documento char(8),
  domicilio varchar2(30),
  ciudad varchar2(30)
 );
 insert into clientes values('Juan Perez','22222222','Colon 1123','Santiago');
 insert into clientes values('Karina Lopez','23333333','San Martin 254','Monte Rey');
 insert into clientes values('Luis Garcia','24444444','Caseros 345','Río de janeiro');
 insert into clientes values('Marcos Gonzalez','25555555','Sucre 458','Santo Domingo');
 insert into clientes values('Nora Torres','26666666','Bulnes 567','Bogotá');
 insert into clientes values('Oscar Luque','27777777','San Martin 786','Asunción');
 insert into clientes values('Pedro Perez','28888888','Colon 234','Buenos Madrid');
 insert into clientes values('Rosa Rodriguez','29999999','Avellaneda 23','Lima');



select * from clientes


create or replace view v_clientes
as 
select nombre, ciudad
from clientes;

select * from v_clientes;
select * from clientes
/*
se puede insertar en la vista
al insertar en la vista tambien se inserta en la tabla original
*/
insert into v_clientes 
values('Rolo','Berisso')


--para proteger la vista
create or replace view v_clientes
as 
select nombre, ciudad
from clientes
with read only


update v_clientes set ciudad = 'San Juan'
where nombre = 'Juan Perez'

--sepueden hacer copias de vistas para trabajar sin riesgo de tocar los datos reales

create materialized view vm_empleados
as
select * from empleados;

select * from vm_empleados



