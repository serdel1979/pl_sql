--sirve para coonsultar valores nulos
drop table productos

create table productos(
idproducto varchar(8) null,
descripcion varchar(20) null,
precio number(6,2) null,
existencia number(9) null);

insert into productos values('prd0001','arandela',null,200);
insert into productos values('prd0002','visagra',80.23,160);
insert into productos values('prd0003','extractor',112.5,140);
insert into productos values('prd0004',null,26.55,250);
insert into productos values('prd0005','rodamiento',2888,30);
insert into productos values('prd0006','plato',265.35,20);
insert into productos values('prd0007','cubo',null,310);
insert into productos values('prd0008',null,225.5,115);
insert into productos values('prd0009','perno',148,148);
insert into productos values('prd0010','tornillos',null,523);
insert into productos values('prd0011',null,1245.5,645);
insert into productos values('prd0012','tornillos',null,900);
insert into productos values('prd0013','bomba',350.5,578);
insert into productos values('prd0014',null,4500,489);

select * from productos

--se puede poner un valor para la consulta
select idproducto,nvl(descripcion,'Sin descripcion') as descripcion, nvl(precio,0) as descripcion
from productos;






