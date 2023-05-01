create database practica6v;
use practica6v;
create table CITY (
City_id int primary key,
City varchar(20)
);
create table CUSTOMER (
Customer_id int primary key,
Address_id int not null,
First_name varchar(40) not null,
Last_name varchar(40) not null,
foreign key(Address_id) references ADDRESS (Address_id)
);
create table ADDRESS(
Address_id int primary key,
Address varchar(60) not null,
City_id int not null,
foreign key (City_id) references CITY (City_id)
);

insert into CITY (City_id,City)values (3,'Granada');

insert into ADDRESS(Address_id,Address,City_id)values ( 20,'Calle Andalucia',3);

insert into CUSTOMER (Customer_id,Address_id,First_name,Last_name) value( 234, 20, 'Pablo', 'Fernandez');



select Customer_id ,First_name, Last_name,City from CUSTOMER, CITY where Customer_id= 234;































