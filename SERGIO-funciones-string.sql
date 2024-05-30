--muestra el caracter 64
select chr(64) from dual;

--muestra las tablas que hay en el sistema
--SELECT table_name FROM all_tables WHERE owner = 'SYS';

--muestra el codigo ascii del caracter
select ascii('  ') from dual;

--concatena varios chars o strings
select concat('buenas','tardes') from dual;

--pone la primer letra en mayuscula
select initcap('buenas tardes') from dual;

--pasa a minusculas
select lower('HOLA LOCO')from dual;

--pasa a todo mayuscula

select upper('hola') from dual;

--rellena oracle con abc a la izquierda completando 10 caracteres
select lpad('oracle',10,'-') from dual;

--rellena oracle con abc a la derecha completando 10 caracteres
select rpad('oracle',10,'-') from dual;

--borra caracteres de la izquierda
select ltrim('curso de oracle','cur') from dual;

--borra caracteres de la derecha
select rtrim('curso de oracle','cle') from dual;

--elimina espacios
select trim('    hola    ')from dual;

select ltrim('   jojojo    ') from dual;

select rtrim('   hola   ') from dual;


--reemplaza la a por la p en lal
select replace('lal','a','p')from dual;

--se queda con los promeros 10 caracteres
select substr('www.google.com',1,10) from dual;


--cantidad de caracteres de un string
select length('hola hol') as cantidad from dual;

--indica donde empieza el string
select instr('curso de oracle sql','de')as posicion from dual;

--reemplaza ruo con xyz
select translate('curso','ruo','xyz') from dual;

--muestra el caracter 64
select chr(64) from dual;

--muestra las tablas que hay en el sistema
--SELECT table_name FROM all_tables WHERE owner = 'SYS';

--muestra el codigo ascii del caracter
select ascii('  ') from dual;

--concatena varios chars o strings
select concat('buenas','tardes') from dual;

--pone la primer letra en mayuscula
select initcap('buenas tardes') from dual;

--pasa a minusculas
select lower('HOLA LOCO')from dual;

--pasa a todo mayuscula

select upper('hola') from dual;

--rellena oracle con abc a la izquierda completando 10 caracteres
select lpad('oracle',10,'-') from dual;

--rellena oracle con abc a la derecha completando 10 caracteres
select rpad('oracle',10,'-') from dual;

--borra caracteres de la izquierda
select ltrim('curso de oracle','cur') from dual;

--borra caracteres de la derecha
select rtrim('curso de oracle','cle') from dual;

--elimina espacios
select trim('    hola    ')from dual;

select ltrim('   jojojo    ') from dual;

select rtrim('   hola   ') from dual;


--reemplaza la a por la p en lal
select replace('lal','a','p')from dual;

--se queda con los promeros 10 caracteres
select substr('www.google.com',1,10) from dual;


--cantidad de caracteres de un string
select length('hola hol') as cantidad from dual;

--indica donde empieza el string
select instr('curso de oracle sql','de')as posicion from dual;

--reemplaza ruo con xyz
select translate('curso','ruo','xyz') from dual;




















