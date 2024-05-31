--unique
create table usuarios(
id int not null primary key,
username varchar(50)not null,
clave varchar(255) not null
);

select * from usuarios;

insert into usuarios values
(3,'pepocho','pepo3211');

alter table usuarios
add constraint UQ_username
unique (username);

alter table usuarios
drop constraint UQ_username;












