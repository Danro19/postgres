
create or replace function  procesar_compra(cliente int, alquilerPelicula, int) 
returns text as $$
declare 
total numeric;
begin
	select costototal into total 
	from alquilercliente a
	where id = alquilerPelicula;

if (select saldo from cliente where id = cliente) < total then 
raise exception 'saldo insuficiente';
end if;

begin
update cliente 
set saldo = saldo - total
where id = cliente;

update pelicula 
set disponibilidad = 'No Disponible'
where id = alquilerPelicula;

insert into pago (fecha, monto, idcliente) 
values (Current_date, total, cliente);

commit;

return 'alquiler realizado con exito';

exception 
when others then
rollback;
return 'error al procesar el alquiler';
end;
$$ language plpgsql;


