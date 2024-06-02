--drop table clientes;
create table clientes(
codigo number(5),
nombre varchar2(30),
domicilio varchar2(30),
ciudad varchar2(20),
referenciadopor number(5),
primary KEY (codigo));

 insert into clientes values (50,'Juan Perez','Sucre 123','Cordoba',null);
 insert into clientes values(90,'Marta Juarez','Colon 345','Carlos Paz',null);
 insert into clientes values(110,'Fabian Torres','San Martin 987','Cordoba',50);
 insert into clientes values(125,'Susana Garcia','Colon 122','Carlos Paz',90);
 insert into clientes values(140,'Ana Herrero','Colon 890','Carlos Paz',9);

select * from clientes;

alter table clientes
add CONSTRAINT fK_referencia
FOREIGN key (referenciadopor)
references clientes (codigo);
--da error

update clientes set referenciadopor = 90 
where referenciadopor = 9;

DELETE FROM CLIENTES WHERE CODIGO = 50;

