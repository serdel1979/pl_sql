create table productos(
id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
descripcion varchar2(50) not null,
stock int not null
);

insert into productos(descripcion,stock)values('gorra',200);

select * from productos;