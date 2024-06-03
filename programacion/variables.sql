set serveroutput on

declare

identificador integer := 50;

--varchar2 hace que el tamaño asignado no quede fijo, se adapta al valor
nombre varchar2(25) := 'Sergio De Luca';
apodo char(10) := 'Serdel';
sueldo number(6,2) := 3000.50;
comision decimal(4,2) := 50.20;
fecha_actual date := (sysdate); --fecha actual
fecha date := to_date('11/01/1979','dd/mm/yyyy');
saludo varchar2(50) default 'Buenos días a todos';

begin

DBMS_OUTPUT.PUT_LINE('El valor de identificador es: ' || identificador);
DBMS_OUTPUT.PUT_LINE('El nombre del usuario es: ' || nombre);
DBMS_OUTPUT.PUT_LINE('El apodo: ' || apodo);
DBMS_OUTPUT.PUT_LINE('El sueldo' || sueldo);
DBMS_OUTPUT.PUT_LINE('La comision' || comision);
DBMS_OUTPUT.PUT_LINE('Hoy es ' || fecha_actual);
DBMS_OUTPUT.PUT_LINE('Naci el ' || fecha);
DBMS_OUTPUT.PUT_LINE(saludo);
end;