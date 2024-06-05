select * from libros;


--update libros set precio = 400 where id=1;

select titulo, precio, fn_costos(precio) as nivel from libros;