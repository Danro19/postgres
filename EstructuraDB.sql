/* Movirental - Gestión de alquiler de peliculas.
*/
-- create database movierental;
-- * creacion de la tabla


-- cliente
create table if not exists cliente(
id serial primary key,
nombre varchar(100) not null,
contacto varchar(15),
direccion varchar(100),
saldo int
);

-- alquiler
create table if not exists alquiler(
id serial primary key,
fechainicio date,
fechaDevolucion date
);

-- sucursal
create table if not exists sucursal(
id serial primary key,
direccion varchar(100)
);

-- categorias
create table if not exists categoria(
id serial primary key,
nombre varchar(50)
);
-- Pagos
create table if not exists pago(
id serial primary key,
fecha date,
monto int,
idCliente int,
foreign key (idCliente) references cliente(id)
);

-- tabla intermedia alquiler cliente
create table if not exists alquilerCliente(
id serial primary key,
idAlquiler int,
idCliente int,
costoTotal int,
foreign key (idAlquiler) references alquiler(id),
foreign key (idCliente) references cliente(id)
);

-- creacion de enum de forma type
create type disponibilidad as enum ('Disponible', 'No Disponible');

-- pelicula
create table if not exists pelicula(
id serial primary key,
titulo varchar(100),
genero varchar(50),
director varchar(50),
lanzamiento int not null check(lanzamiento >=1900 and lanzamiento <= 2025),
disponibilidad disponibilidad,
precio int,
idSucursal int,
foreign key (idSucursal) references sucursal(id)
);

-- creacion tabla intermedia alquiler pelicula

create table if not exists alquilerPelicula(
id serial primary key,
idAlquiler int,
idPelicula int,
foreign key (idAlquiler) references alquiler(id),
foreign key (idPelicula) references pelicula(id)
);

-- crear tabla intermedia categoria peliculas
create table if not exists categoriaPelicula(
id serial primary key,
idCategoria int,
idPelicula int,
foreign key (idCategoria) references categoria(id),
foreign key (idPelicula) references pelicula(id)
);







-- * inserciones 
-- * consultas x 8
-- * crear un procedimiento almacenado 