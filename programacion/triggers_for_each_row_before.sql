--son disparadores que ocurren cuando sucede un evento
--no reciben ni retornan parametros ni generan resultados
--se clasifican en before, after, por evento o nivel

CREATE OR REPLACE TRIGGER tr_ingresaempleados
BEFORE INSERT
ON empleados
FOR EACH ROW --se dispara el triger en cada insercion
BEGIN
    INSERT INTO control VALUES (USER, SYSDATE);
END tr_ingresaempleados;


select * from empleados;

insert into empleados VALUES('22321546','mariano','moreno',560,TO_DATE('6/6/2024','dd/mm/yyyy'));

insert into empleados VALUES('22321546','mario','mordini',560,TO_DATE('5/6/2024','dd/mm/yyyy'));


select * from control
 
 