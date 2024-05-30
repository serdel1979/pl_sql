--funcion add_months suma 5 meses
select add_months(to_date('10/01/2020','dd/mm/yyyy'),5) from dual;

--si le indico un negativo resta
select add_months(to_date('10/01/2020','dd/mm/yyyy'),-5) from dual;


--retorna ultimo dia del mes de la fecha dada
select last_day(to_date('09/02/2020')) from dual;

--diferencia de meses
select MONTHS_BETWEEN
       (TO_DATE('19/05/2020','DD/MM/YYYY'),
        TO_DATE('19/12/2020','DD/MM/YYYY') )as meses from dual;



--retorna siguiente dia
select next_day(to_date('18/04/2023','dd/mm/yyyy'),'monday')from dual;

--fecha actual
select current_date  from dual;

--siempre tiene que ser igual a current_date
select sysdate from dual;

--fecha y hora
select current_timestamp  from dual;

--fecha y hora
select systimestamp  from dual;


--convierte fecha a chars
select to_char('10/02/1998') from dual;










