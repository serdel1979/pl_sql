/*
CREATE OR REPLACE TRIGGER tr_ingresaempleados
before insert
ON empleados
FOR EACH ROW    --se pone for each row para que se dispare por cada registro que se inserta en la tabla
BEGIN
    INSERT INTO control VALUES (USER, SYSDATE);
END tr_ingresaempleados;
*/

select * from control;

describe empleados;


insert into empleados values ('12345678','perillo','juan','compras');
insert into empleados values ('12345679','lalo','fifi','compras');
