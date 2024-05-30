drop table medicamentos;

 create table medicamentos(
  codigo number(6) not null,
  nombre varchar2(20),
  laboratorio varchar2(20),
  precio number(6,2),
  cantidad number(4),
  fechavencimiento date not null,
  primary key(codigo)
 );
 
  insert into medicamentos
  values(102,'Sertal','Roche',5.2,10,to_date('01/02/2020','dd/mm/yyyy'));
 insert into medicamentos 
  values(120,'Buscapina','Roche',4.10,200,to_date('01/12/2017','dd/mm/yyyy'));
 insert into medicamentos 
  values(230,'Amoxidal 500','Bayer',15.60,100,to_date('28/12/2017','dd/mm/yyyy'));
 insert into medicamentos
  values(250,'Paracetamol 500','Bago',1.90,20,to_date('01/02/2018','dd/mm/yyyy'));
 insert into medicamentos 
  values(350,'Bayaspirina','Bayer',2.10,150,to_date('01/12/2019','dd/mm/yyyy'));
 insert into medicamentos 
  values(456,'Amoxidal jarabe','Bayer',5.10,250,to_date('01/10/2020','dd/mm/yyyy'));

select * from medicamentos;


select * from medicamentos 
where precio BETWEEN 5 and 15;


select * from medicamentos 
where cantidad BETWEEN 100 and 200;


select * from medicamentos
where fechavencimiento BETWEEN '01/12/2017' and '01/02/2018';


select * from medicamentos where laboratorio in ('Bayer','Bago');


select * from medicamentos where laboratorio not in ('Bayer','Bago');

select * from medicamentos where cantidad BETWEEN 10 and 200;


--el año de fecha este en 2019 y 2020
select * from medicamentos
where extract(year from fechavencimiento) in (2019,2020);


select * from medicamentos
where extract(month from fechavencimiento) in (12,10);




