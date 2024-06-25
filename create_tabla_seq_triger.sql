create table productos(
id int not null primary key,
descripcion varchar2(30) not null,
precio number(6,2) default 0,
existencia int default 0
);

create sequence seq_id_productos
start with 1
increment by 1
maxvalue 9999
minvalue 1
cycle;


CREATE OR REPLACE TRIGGER trg_incremento_id_productos
BEFORE INSERT ON productos
FOR EACH ROW
BEGIN
  -- Asigna el pr�ximo valor de la secuencia al id
  :NEW.id := seq_id_productos.NEXTVAL;
END;

insert into productos(descripcion,precio,existencia)values('autos',3500,'100');

select * from productos;