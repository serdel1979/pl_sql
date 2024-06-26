alter session set "_ORACLE_SCRIPT"=true;


create user sergio identified by "admin";

grant create session to sergio;
grant create table to sergio;
grant create view to sergio;
grant create PROCEDURE to sergio;
grant create sequence to sergio;

grant "CONNECT" to sergio;