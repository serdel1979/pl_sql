select * from categorias;

ALTER TABLE productos
ADD categoria_id NUMBER(3);

ALTER TABLE productos
ADD CONSTRAINT fk_categoria
FOREIGN KEY (categoria_id)
REFERENCES categorias(codigo_ca);


select codigo_pro,descripcion,marca,medida,stock,activo,categoria_id  from productos;



create view vista_productos as
select p.codigo_pro, p.descripcion,p.marca,p.medida,p.stock,p.activo,c.descripcion as categoria
from productos p
inner join categorias c on c.codigo_ca = p.categoria_id;

select codigo_pro, descripcion, marca, medida, stock, activo, categoria from vista_productos



