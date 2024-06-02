drop table alumnos;

create table alumnos(
documento char(8),
nombre varchar2(30),
nota number(4,2),
primary key(documento));

 insert into alumnos values('30111111','Ana Algarbe',10);
 insert into alumnos values('30222222','Bernardo Bustamante',9);
 insert into alumnos values('30333333','Carolina Conte',8);
 insert into alumnos values('30444444','Diana Dominguez',9);
 insert into alumnos values('30555555','Fabian Fuentes',8);
 insert into alumnos values('30666666','Gaston Gonzalez',7);
 insert into alumnos values('30644556','Federico Suarez',6);
 insert into alumnos values('30689898','Miguel Pantaleon',6);

select * from alumnos

--alumno con nota mas alta
select * from alumnos 
where nota = (select max(nota) from alumnos);

/*
consulte las notas que son menores al promedio de la clase
*/

select * from alumnos
where nota < (select round(avg(nota)) as promedio from alumnos);

/*
actualizar las notas menores al promedio
*/

update alumnos set nota=5
where nota < (select round(avg(nota)) as promedio from alumnos);


delete from alumnos
where nota < (select round(avg(nota)) as promedio from alumnos);







