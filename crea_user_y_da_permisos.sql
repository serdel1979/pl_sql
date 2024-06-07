DECLARE
  v_username VARCHAR2(30) := 'sergio';
  v_password VARCHAR2(30) := 'admin';
BEGIN
  EXECUTE IMMEDIATE 'CREATE USER ' || v_username || ' IDENTIFIED BY ' || v_password;
  EXECUTE IMMEDIATE 'GRANT CONNECT, RESOURCE TO ' || v_username;
END;
/
ALTER USER sergio IDENTIFIED BY admin DEFAULT TABLESPACE system TEMPORARY TABLESPACE temp QUOTA UNLIMITED ON system;


grant create session to sergio;
grant create table to sergio;
grant create view to sergio;
grant create PROCEDURE to sergio;
grant create sequence to sergio;