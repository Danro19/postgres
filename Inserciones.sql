-- Inserciones

-- Insercion Clientes

insert into cliente (nombre, contacto, direccion, saldo) values 
('Kevin Ramirez', '3021245434', 'carrera 38 25 44', 800000),
('Danilo Rojas', '3025245231', 'calle 24 14 88', 50000),
('Sebastian Sepulveda', '3023412345', 'carrera 44 24 33', 38000),
('Silvia Hernandez', '3084326548', 'carrera 27 14 15', 40000),
('Lina Loaiza', '3879456213', 'calle 41 14 20', 700000),
('Claudia Rondon', '3254369871', 'calle 200 24 58', 8000),
('Maria Mondragon', '3445789654', 'transversal 28 44 10', 90000),
('Alejandra Amaris', '3175456363', 'carrera 01 28 44', 7000),
('Valentina Vargas', '3321447789', 'calle 20 24 20', 150000),
('Lorena Lopez', '3174757747', 'transversal 14 39 84', 100000);


-- alquiler
insert into alquiler (fechaInicio, fechaDevolucion) values 
('2025-05-20','2025-06-20'),
('2025-04-10','2025-05-10'),
('2025-01-20','2025-02-20'),
('2025-03-18','2025-04-18'),
('2025-04-07','2025-05-07'),
('2025-01-02','2025-02-02'),
('2025-05-03','2025-06-03'),
('2024-12-20','2025-01-20'),
('2024-11-19','2025-11-19'),
('2024-12-04','2025-01-04');


-- inserciones sucursal
insert into sucursal (direccion) values 
('carrera 22 34 54'),
('calle 12 44 120'),
('cc maravilla local 132'),
('torre tenesis piso 4 local 24'),
('transversal 44 08 98');

-- inserciones peliculas

insert into pelicula (titulo, genero, director, lanzamiento, disponibilidad, precio, idSucursal) values
('Detras del ultimo no hay nadie','Extranjera','Marlon Chacon',1997,'Disponible',8000, 1),
('La patada del caballo mocho','Asiatica','Triton Percefone',1945,'Disponible',24000, 3),
('La esquina de la casa redonda','Horror','Chepeto Copilo',2020,'Disponible',38000, 2),
('Nadie es Todo','Latinoamerica','Miha Califanse',2008,'Disponible',3000, 4),
('Despues del primero va el segundo','Extranjera','Lerou Artes',2004,'Disponible',180000, 5),
('La cabeza ganadora de los juegos paralimpicos','Superacion','Chespiro Estoico',1998,'Disponible',14000, 2),
('El mudo con mucho que decir','Superacion','Ricardo Castro',2025,'Disponible',34000, 2),
('Retos en el abismo','Superacion','Dan Ramirez',2025,'Disponible',84000, 4),
('El fin de mundo','Extrangera','Deste mondo',1998,'Disponible',25000, 5),
('Ratio de la vida','Extrangera','Tente Fabio',1992,'Disponible',45000, 3),
('Jugando un momento y viviendo toda la vida','Robo','Roberto Carl',2025,'Disponible',4000, 4),
('Superando la depresion','Superacion','Dan Ramirez',1998,'Disponible',84000, 3),
('Viviendo al margen del caos','Superacion','Dan Ramirez',1987,'Disponible',28000, 4),
('Destruyendo los paradigmas de mi pasado','Superacion','Dan Ramirez',1984,'Disponible',39000, 5),
('Lanzandome al vacio','Superacion','Dan Ramirez',2008,'Disponible',70000, 4);

-- inserciones categoria
insert into categoria (nombre) values 
('Terror'),
('Suspenso'),
('Comedia'),
('Accion'),
('Drama'),
('Romance');

-- inserciones relacion categoria Pelicula
insert into categoriapelicula (idCategoria, IdPelicula) values 
(1,3),
(1,4),
(5,15),
(5,14),
(5,13),
(5,12),
(5,11),
(3,4),
(3,5),
(2,6),
(4,7),
(5,8),
(6,15),
(2,1),
(3,2),
(5,9),
(3,10),
(4,11),
(6,12),
(6,13),
(6,14);

-- inserciones alquiler pelicula 

insert into alquilerpelicula (idalquiler, idpelicula) values
(1,1), (1,2), (2,1), (3,2), (3,5), (4,2), (5,2), (6,8), (7,10), (8,14),
(9,15), (10,3), (3,4), (4,14), (5,12), (6,11), (8,11), (10,2), (8,3), (5,4),
(6,13), (4,12), (5,14), (6,10), (2,4), (3,7), (5,8), (8,4), (4,4), (1,4);





insert into alquilercliente (idalquiler, idcliente, costototal) values 
(1,1,35000),
(2,3,11000),
(3,4,241000),
(4,1,150000),
(5,1,234000),
(6,1,161000),
(7,1,45000),
(8,1,84000),
(9,1,70000),
(10,1,62000);






