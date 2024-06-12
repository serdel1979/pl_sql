ALTER USER sergio IDENTIFIED BY admin DEFAULT TABLESPACE system TEMPORARY TABLESPACE temp QUOTA UNLIMITED ON system;


grant create session to sergio;
grant create table to sergio;
grant create view to sergio;
grant create PROCEDURE to sergio;
grant create sequence to sergio;

GRANT CREATE TRIGGER TO sergio;
GRANT CREATE SEQUENCE TO sergio;
