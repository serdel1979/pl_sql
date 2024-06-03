set serveroutput on

declare

mensaje constant varchar2(30) := 'Hola a todos';
numero constant number(6) := 30000;

begin

DBMS_OUTPUT.PUT_LINE(mensaje);
DBMS_OUTPUT.put_line(numero);

end;