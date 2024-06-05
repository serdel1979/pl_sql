/*
drop table libros;
create table libros(
id integer primary key,
titulo varchar2(20),
precio number(8,2)
);

select * from libros;

insert INTO libros values(2,'la casa',600.50);
*/
SET SERVEROUTPUT ON;

-- Crea el procedimiento
CREATE OR REPLACE PROCEDURE incrementa
AS
BEGIN
    update libros set precio = precio * 1.1;
END incrementa;

/
-- Ejecuta el bloque an�nimo
select * from libros;

--describe libros;

execute incrementa;



--select * from user_objects where object_type='PROCEDURE';


--update libros set precio = 50 where titulo = 'la monta�a' or titulo='la monta�a rusa';
/*
alter table libros
modify precio number(6);
*/

drop procedure saludo;

