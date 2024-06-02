
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
insert into clientes values(102,'Garcia Juan','Sucre 345','Cordoba',1);
insert into clientes values(103,'Lopez Susana','Caseros 998','Posadas',3);
insert into clientes values(104,'Marcelo Moreno','Peru 876','Viedma',4);
insert into clientes values(105,'Lopez Sergio','Avellaneda 333','La Plata',5);



select * from clientes;
select * from provincias;


select constraint_name, status, validated
from user_constraints
where table_name = 'CLIENTES';

alter table clientes
add constraint fK_codigoprovincia
foreign key (codigoprovincia)
references provincias(codigo) NOVALIDATE;



insert into clientes
values(110,'Perico','7 n 6548','Ensenada',6);



--elimino la restriccion para insertar en una tabla relacionada
alter table clientes
disable NOVALIDATE
constraint fK_codigoprovincia;






