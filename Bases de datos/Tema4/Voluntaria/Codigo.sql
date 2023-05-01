alter table pedidos add column estado varchar (50) not null ;

drop table productos_pedido;

ALTER TABLE clientes CHANGE dir_cp CODIGO_POSTAL varchar(5);

