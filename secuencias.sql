--primero se define una secuencia
--se compone de un nombre de secuencia
--tienen un valor int
--el valor entero define el maximo y minimo de la secuencia
--ciclo




DROP table visitantes;

describe table  visitantes

create table visitantes(
id int not null primary key,
nombre varchar(40)not null,
salario number(4,2)
)

insert into visitantes values
(seqvisitantes.nextval,'felipe',15.20);

insert into visitantes values
(seqvisitantes.nextval,'juancho',50.20);

insert into visitantes values
(seqvisitantes.nextval,'nadia',89.20);


select * from visitantes;

truncate table visitantes;

--drop sequence sequence_visitantes


--asi se crea una secuencia
create sequence seqvisitantes
start with 1
increment by 1
maxvalue 9999
minvalue 1
cycle;

--despues de crear la secuencia ejecutar
select seqvisitantes.nextval from dual;



select * from visitantes

--muestra todas las secuencias
select * from all_sequences;







