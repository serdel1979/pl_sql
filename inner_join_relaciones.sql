--BORRAR TABLAS ANTERIORES
drop table clientes;
drop table provincias;

--CREAR TABLAS
 create table clientes (
  codigo number(5),
  nombre varchar2(30),
  domicilio varchar2(30),
  ciudad varchar2(20),
  codigoprovincia number(2)
 );

 create table provincias(
  codigo number(2),
  nombre varchar2(20)
 );

 --INSERTAR DATOS
 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Corrientes');
 insert into provincias values(null,'La Pampa');

 insert into clientes values (1,'Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values (2,'Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values (3,'Garcia Juan','Rivadavia 333','Villa Maria',null);
 insert into clientes values (4,'Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values (5,'Pereyra Lucas','San Martin 555','Cruz del Eje',1);
 insert into clientes values (6,'Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values (7,'Torres Fabiola','Alem 777','Ibera',3);
 insert into clientes values (8,'Garcia Paco','Avellaneda 888','Rawson',5);



select * from clientes;

select * from provincias;


--el prefijo se puede poner solo al primera columna de la tabla
--las relaciones tiene que ser con campos iguales y mismo tipo
select c.nombre, domicilio, ciudad, p.nombre as provincia
from clientes c
inner join provincias p
on c.codigoprovincia = p.codigo
order by c.nombre














