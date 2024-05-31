drop table clientes;
drop table provincias;

create table clientes(
codigo number(5),
nombre varchar2(30),
domicilio varchar2(18),
ciudad varchar2(20),
codigoprovincia number(2)
);


create table provincias(
codigo number(2) primary key not null,
nombre varchar(20) not null
);


--INSERTS

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values(100,'Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values(101,'Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values(102,'Acosta Ana','Avellaneda 333','Posadas',3);
 insert into clientes values(103,'Luisa Lopez','Juarez 555','La Plata',4);

delete provincias;
delete clientes;


select * from clientes;

alter table clientes
add constraint fK_codigoprovincia
FOREIGN key (codigoprovincia)
references provincias(codigo);












