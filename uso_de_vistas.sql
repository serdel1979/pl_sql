/*
Una vista es una tabla logica.
No tiene datos en si misma.

Son utiles para restringir el acceso a la base de datos.
Son utiles para consultas complejas.
*/

select * from empleados;


/*creacion de vista de empleados a promover*/

/*
alter table empleados
add(seccion varchar2(50) default 'Secretaria' not null);

update empleados SET seccion = 'Compras'
where nombre = 'mario';
*/

create or replace view v_promovidos as
select * from empleados
where sueldo like '5%'
or seccion = 'Secretaria';

select * from v_promovidos

--antes de crear la vista hay que crear una consulta

create or replace view v_incrementos as
select nombre, sueldo, sueldo + (sueldo*0.1) as aumentado from empleados
where sueldo < 2000


select * from v_incrementos
drop view v_incrementos

