CREATE DATABASE tienda;

CREATE table clientes (
id int primary key auto_increment,
nombre varchar(255) not null,
apellidos varchar(255) not null,
teléfono int not null,
dni varchar(9) not null,
dir_calle varchar(255) not null,
dir_numero int,
dir_cp varchar(5) not null,
dir_poblacion varchar(255) not null,
dir_provincia varchar(255) not null
);



CREATE TABLE pedidos(
id int primary key auto_increment,
fk_cliente_id int not null,
importe_total float not null,
fecha_y_hora timestamp not null,
constraint fk_cliente_id foreign key (fk_cliente_id) references clientes (id)
);

CREATE TABLE productos_pedido(
fk_pedido_id int not null,
fk_producto_id int not null,
cantidad int not null default 0,
constraint primary key (fk_pedido_id,fk_producto_id), 
constraint fk_pedido_id foreign key (fk_pedido_id) references pedidos (id),
constraint fk_producto_id foreign key (fk_producto_id) references productos (id)
);


USE tienda;
CREATE TABLE productos(
id int primary key auto_increment,
nombre varchar(255) not null,
descripcion varchar(255) null,
precio float not null,
peso float not null,
stock float not null
);


