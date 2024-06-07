--son disparadores que ocurren cuando sucede un evento
--no reciben ni retornan parametros ni generan resultados
--se clasifican en before, after, por evento o nivel

CREATE OR REPLACE TRIGGER tr_DELETEALUMNOS
BEFORE DELETE
ON ALUMNOS
FOR EACH ROW --se dispara el triger en cada insercion
BEGIN
    INSERT INTO control VALUES (USER, SYSDATE);
END tr_DELETEALUMNOS;


select * from control;

delete alumnos where nota=10


TRUNCATE TABLE CONTROL;
 
 