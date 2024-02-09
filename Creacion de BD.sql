CREATE DATABASE bd_almacen;
drop database bd_alamacen;

use bd_almacen;

-- tabla 1
create table tb_unidades_medidas (
	codigo_um int not null primary key auto_increment,
    descripcion_um varchar(20)
);

-- tabla 2
create table tb_categorias (
	codigo_ca int not null primary key auto_increment,
    descripcion_ca varchar(50)
);

-- tabla 3
create table tb_articulos (
	codigo_ar int not null primary key auto_increment,
    descripcion_ar varchar(100),
    marca_ar varchar(50),
    codigo_um int,
    codigo_ca int,
    stock_actual decimal(10,2),
    fecha_crea datetime,
    fecha_modifica datetime
);

-- ya se crearon las tablas con sus columnas