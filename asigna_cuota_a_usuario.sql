--creacion de un user
ALTER USER unuser IDENTIFIED BY admin DEFAULT TABLESPACE system TEMPORARY TABLESPACE temp QUOTA UNLIMITED ON system;

--da privilegios a unuser
grant create session to unuser
grant create table to unuser
grant create view to unuser
grant create PROCEDURE to unuser;
grant create sequence to unuser;

--permisos para administrar tablas
--grant all on nametable to unuser

--borra permisos
--revoke all on nametable from unuser

--borra usuario
--drop user miuser cascade;