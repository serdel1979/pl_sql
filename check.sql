select * from libros;

--restringe el rango de valores en una columna, en este caso precio
alter table libros
add constraint ck_libros_
check (precio >= 0 and precio <= 1000);

insert into libros
values ('la locura','bill','atlantis',999,3);

select * from libros;

alter table libros
add constraint ck_libros_editorial
check (editorial not like '%boca%');


insert into libros
values('los chanchos','fefo','laboca',655,10);



create table dias_semana(
dia int not null,
nombre varchar2(40)
);

select * from dias_semana;

alter table dias_semana
add constraint ck_nombre_dia
check (nombre in ('lunes','miercoles','viernes'));


alter table dias_semana
add constraint ck_nombre_dia_null
check (nombre is not null);



insert into dias_semana
values(5,null);

SELECT * FROM dias_semana;





