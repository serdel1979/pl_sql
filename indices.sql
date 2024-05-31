 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  nombre varchar2(30),
  curso char(1),
  materia varchar2(30),
  notafinal number(4,2)
 );

 insert into alumnos values ('A123','22222222','Perez Patricia','5','Matematica',9);
 insert into alumnos values ('A234','23333333','Lopez Ana','5','Matematica',9);
 insert into alumnos values ('A345','24444444','Garcia Carlos','6','Matematica',8.5);
 insert into alumnos values ('A348','25555555','Perez Patricia','6','Lengua',7.85);
 insert into alumnos values ('A457','26666666','Perez Fabian','6','Lengua',3.2);



select * from alumnos   

CREATE index i_alumnos_nombre
on alumnos(nombre);

create unique index i_alunos_legajo
on alumnos (legajo);

select * from alumnos;

select * from user_ind_columns;


