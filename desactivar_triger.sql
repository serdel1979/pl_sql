select * from empleados

select * from control

truncate table control


select trigger_name, triggering_event, table_name, status
from user_triggers
where table_name='empleados';


--deshabilito trigger
alter trigger tr_aumentasueldo disable;

--habilita trigger
alter trigger tr_aumentasueldo enable;


select * from empleados;

update empleados set sueldo = 1050 where documento = '22333444'
 
 
select * from control
 
 