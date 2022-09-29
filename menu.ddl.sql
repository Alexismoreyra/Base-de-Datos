 insert into categorias(nombre, descripcion, encargo) values( 'pastas', 'las mejores pastas de mario', 'luigi ');


insert into platos(nombre, descripcion, nivel,foto, precio, id_categoria) values ('fideos con salsa', 'tiene carne', '1', 'plato1.jpg', 600.000,1);

insert into ingredientes (nombre, utilidad, cantidad_gramo, cantidad_liquido, id_plato, id_almacen) values ('tomate', 'salsa',  600.000, 300.000,1,1 );

insert into almacen(cantidad) value(4);

select *from categorias,platos,ingredientes,almacen;

alter table platos add foreign key (id_categoria) references categorias(id);  
alter table ingredientes add foreign key (id_plato) references platos(id);  
alter table ingredientes add foreign key (id_almacen) references almacen(id);  

-- ------------------------------------------
-- update--
-- ------------------------
 insert into categorias(nombre, descripcion, encargo) values( 'pastas', 'las mejores pastas de mario', 'luigi ');
update categorias set nombre = 'fritos',descripcion = 'las mejores frituras' where id = 2;
update platos set nombre = ' papas fritas',
descripcion = 'con cheddar', 
foto = 'papas.jpg',
 precio = 400.000, 
 id_categoria= 5 
 where id = 2;
 
 
 Drop database if exists menu; 
 create database menu;
 use menu;
 
 
 create table categorias (
 id int auto_increment primary key, 
 nombre varchar (25), 
 descripcion varchar (180), 
 encargo varchar (25)
 );
 
 create table platos (
 id int auto_increment primary key, 
 nombre varchar (25), 
 descripcion varchar (180), 
 nivel enum ('baja', 'media', 'alta'),
 foto varchar (20), 
 precio double, 
 id_categoria int 
 );
 
 create table ingredientes (
 id int auto_increment primary key,
 nombre varchar (25),
 utilidad varchar (25),
 cantidad_gramo double,
 cantidad_litro double,
 id_plato int,
 id_almacen int
 );
 
 create table almacen (
 id int auto_increment primary key,
 cantidad int
 );
 
 show tables;
 
 /*
 1)alteramos la tabla platos: alter table paltos
 2) agreamos la FK de platos: add foreign key (id_categoria)
 3) hacemos referencia de esa FK a la PK de la tabla categoria: references categorias (id);
 */
 

 alter table platos
 add foreign key (id_categoria)
 references categorias (id);
 
 alter table ingredientes
 add foreign key (id_plato)
 references platos (id);
 
 alter table ingredientes
 add foreign key (id_almacen)
 references almacen (id);
 
 
 
 
 