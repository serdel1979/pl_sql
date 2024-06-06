--son disparadores que ocurren cuando sucede un evento
--no reciben ni retornan parametros ni generan resultados
--se clasifican en before, after, por evento o nivel
 /*
 drop table libros;
 drop table control;

 --crear tablas
 create table libros(
  codigo number(6),
  titulo varchar2(40),
  autor varchar2(30),
  editorial varchar2(20),
  precio number(6,2)
 );
 create table control(
  usuario varchar2(30),
  fecha date
 );
 */
 
 create or replace trigger tr_ingresolibros
 before insert
 on libros
 begin
    insert into control values(user, sysdate);
 end tr_ingresolibros;
 
 
 select * from control;
 
 insert into libros values(321121,'la loma','juan','la antartida',3211);
 
 
 
 