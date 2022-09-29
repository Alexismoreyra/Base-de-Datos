-- insertamos registros en la tabla categoria 

/*
1) insertamos en categorias: insert into categorias
2) ingresamos los atributos entre parentesis y separados por ","
3) le damos un valor a las columnas ingresadas entre parentesis y separado por coma (,)
*/

-- ------------------------------------
-- INSERT (insertar datos nuevos)
-- ------------------------------------

insert into categorias (descripcion, nombre, encargo)
value ('pastas', 'las mejores', 'mario');

-- ------------------------------------
-- UPDATE (cambio de datos ya creados)
-- ------------------------------------

update categorias set nombre = 'mariscos', descripcion= 'ricos pescados'where id = 2; 

select * from categorias; 

-- ------------------------------------
-- DELETE (eliminacion de datos ya creados)
-- ------------------------------------

-- Borro de categorias donde el id sea igual a 3
delete from categorias where id= 3;

insert into platos (nombre,descripcion,nivel,foto,precio,id_categoria)
value ('fideos con salsa','con albondigas','baja','plato1.jpg','600.00','1');

insert into almacen (cantidad) value (6);

-- ingresamos ingredientes
insert into ingredientes (nombre,utilidad,cantidad_gramo,cantidad_litro,id_plato,id_almacen)
value ('tomate','salsa',600.00,0.3,1,1);

Describe platos; -- nos trae las caracteristicas de la tabla


