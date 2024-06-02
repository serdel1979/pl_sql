drop table clientes;
 drop table provincias;

 create table clientes (
  codigo number(5),
  nombre varchar2(30),
  domicilio varchar2(30),
  ciudad varchar2(20),
  codigoprovincia number(2),
  primary key(codigo)
 );

 create table provincias(
  codigo number(2),
  nombre varchar2(20),
  primary key (codigo)
 );

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values(100,'Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values(101,'Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values(102,'Acosta Ana','Avellaneda 333','Posadas',3);


select * from clientes;
select * from provincias;

--como permitir borrar registros en tablas con foreign key

alter table clientes
add constraint fK_codigoprovincia
foreign key (codigoprovincia)
references provincias(codigo)
on delete set null;
--despues de borrar una registro referenciado se pone en null la referencia



delete from provincias where codigo = 3;

select * from provincias;
select * from clientes;




alter table clientes
drop constraint fK_codigoprovincia;

alter table clientes
add constraint fK_codigoprovincia
foreign key(codigoprovincia)
references provincias(codigo)
on delete cascade;
--permite borrar un registro y sos referencias

select * from clientes;
select * from provincias;

delete clientes where codigo = 100

select constraint_name, status, validated
from user_constraints
where table_name = 'CLIENTES';



delete provincias where codigo=2;


