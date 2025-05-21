-- 1

select p.idsucursal , sum(a2.costoTotal)
from alquilercliente a2 
join alquiler a on a.id = a2.idalquiler 
join alquilerpelicula a3 on a3.idalquiler = a.id
join pelicula p on p.id  =a3.idpelicula
where date_part('month',a.fechainicio)< (date_part('month',current_date)-1)
group by p.idsucursal
order by p.idsucursal asc
;

-- 2

-- 3
select c2.nombre, AVG(a.id)
from pelicula p 
join categoriapelicula c on p.id = c.idcategoria 
join categoria c2 on c2.id = c.idcategoria 
join alquilerpelicula a on p.id  = a.idpelicula 
group by c2.nombre ;
-- 4 

-- 5
select titulo, genero , precio  from pelicula p where disponibilidad = 'Disponible';
-- 6
select c.id, a.fechainicio, a.fechadevolucion , p.titulo, a.id  
from alquiler a 
join alquilerpelicula a2 on a.id = a2.idalquiler 
join pelicula p on p.id = a2.idpelicula 
join alquilercliente a3 on a.id = a3.idalquiler 
join cliente c on c.id  = a3.idcliente 
where c.id=1;
-- 7
select * from pelicula p where precio > 30000
order by precio;
-- 8

select *
from pelicula p 
where lanzamiento > 2020;



