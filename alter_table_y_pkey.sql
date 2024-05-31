create table ARTICULOS(
codigo int not null,
nombre varchar(50),
descripcion varchar(100),
precio number(6,2)
);


alter table articulos
add constraint codigo_pk
primary key (codigo);

describe articulos

