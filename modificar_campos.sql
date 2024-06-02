create table tipo_dato(
valor int null
);

select * from tipo_dato

insert into tipo_dato values(100);

insert into tipo_dato values('hola');

alter table tipo_dato
modify valor varchar2(20);


truncate table tipo_dato;


--se permite ingresar
insert into tipo_dato values(2000);

select * from tipo_dato

alter table tipo_dato
modify valor number(4);

truncate table tipo_dato


insert into tipo_dato
values(null);


select * from tipo_dato;

alter table tipo_dato
modify valor number(4) not null

truncate table tipo_dato;



