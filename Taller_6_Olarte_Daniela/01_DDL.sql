drop table editoriales cascade constraints;
drop table librerias cascade constraints;
drop table libros cascade constraints;
drop table pedidos cascade constraints;

create table editoriales(
    editorial_id numeric,
    nombre varchar2(100) not null,
    ciudad varchar2(100) not null,
    primary key (editorial_id)  
);

create table librerias(
    libreria_id numeric,
    nombre varchar2(100) not null,
    ciudad varchar2(100) not null,
    primary key(libreria_id)
);

create table libros(
    libro_id numeric,
    nombre varchar2(100) not null,
    autor varchar2(100) not null,
    primary key(libro_id)
);

create table pedidos(
    pedido_id numeric not null,
    cantidad numeric not null,
    editorial_id numeric not null,
    libreria_id numeric not null,
    libro_id numeric not null,
    primary key(pedido_id),
    foreign key(editorial_id) references editoriales(editorial_id) on delete cascade,
    foreign key(libreria_id) references librerias(libreria_id) on delete cascade,
    foreign key(libro_id) references libros(libro_id)on delete cascade
);