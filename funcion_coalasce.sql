--sirve para consultar datos sin ver valores nulos
/*
select coalesce(null,1)as valor from dual

select coalesce(null,null,null) as valor from dual

--TRAE EL PRIMER NO NULO
select coalesce(null,'A','b') as valor from dual

--esta consulta no se puede hacer, deben ir iguales tipos de datos
select coalesce(null,1,'a') as valor from dual
*/
create table contactos(
    idcontacto NUMBER not null primary key,
    idempleado NUMBER not null,
    nombre varchar2(100) not null,
    apellido varchar2(100) not null,
    relacion varchar2(100),
    telefono_casa varchar2(25),
    telefono_trabajo varchar2(25),
    telefono_movil varchar2(25)
)

insert into contactos values (1,1001,'Maria', 'Baez', 'Esposa',NULL,'515.123.4568','515.123.4569');
insert into contactos values (2,1002,'Juan', 'Rivera', 'Esposo',NULL,NULL,'515.123.3563');
insert into contactos values (3,1003,'Elizabeth', 'Contreras', 'Madre',NULL,NULL,NULL);

select nombre || ' ' || apellido as "Nombre y apellido", relacion,
coalesce(telefono_casa, telefono_trabajo,telefono_movil, 'N/A') as telefono
from contactos;







