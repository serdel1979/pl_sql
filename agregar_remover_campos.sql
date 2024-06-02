
select * from libros;

alter table libros
add cantidad int;

alter table libros
add existencia int not null;

alter table libros
add (existencia int default 0 not null);


alter table libros
add(vendidos int default 0 not null,
en_stock int default 0 not null);


alter table libros
drop column en_stock;


alter table libros
drop (existencia,vendidos);

select * from libros;

