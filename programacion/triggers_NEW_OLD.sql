--son disparadores que ocurren cuando sucede un evento
--no reciben ni retornan parametros ni generan resultados
--se clasifican en before, after, por evento o nivel

drop table libros;
drop table ofertas;

 create table libros(
  codigo number(6),
  titulo varchar2(40),
  autor varchar2(30),
  editorial varchar(20),
  precio number(6,2)
 );
 create table ofertas(
  codigo number(6),
  precio number(6,2),
  usuario varchar2(20),
  fecha date
 );
 insert into libros values(100,'Uno','Richard Bach','Planeta',25);
 insert into libros values(103,'El aleph','Borges','Emece',28);
 insert into libros values(105,'Matematica estas ahi','Paenza','Nuevo siglo',12);
 insert into libros values(120,'Aprenda PHP','Molina Mario','Nuevo siglo',55);
 insert into libros values(145,'Alicia en el pais de las maravillas','Carroll','Planeta',35);
 
 --si el precio del libro es menor o igual a 30 lo agrega en la tabla ofertas
create or replace trigger tr_Ingresalibros
before insert
on libros
for each row
begin
    if(:new.precio <= 30)then
       insert into ofertas values(:new.codigo,:new.precio, user,sysdate);  
    end if;   
end tr_Ingresalibros;
 
 
select * from libros
select * from ofertas

insert into libros values(988,'La locura máxima','El sapo pepe','Mundo',23);


 
--triger que maneja las actualizaciones con old
create or replace trigger tr_Actualizalibros
before update of precio
on libros
for each row
begin
    if(:old.precio <= 30)and(:new.precio > 30)then
       delete from ofertas where codigo = :old.codigo ; 
    end if;   
    if(:old.precio > 30)and(:new.precio <= 30)then
        insert into ofertas values(:new.codigo,:new.precio, user,sysdate);
    end if;
end tr_Actualizalibros;
 
select * from libros;
 
update libros set precio = 29 where codigo= 120;

update libros set precio = 80 where codigo= 120;
 
select * from ofertas; 

 
 
 