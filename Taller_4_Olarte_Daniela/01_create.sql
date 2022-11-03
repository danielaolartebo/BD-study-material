drop table marcas cascade constraints;
drop table modelos cascade constraints;
drop table vehiculos cascade constraints;
drop table conductores cascade constraints;
drop table reservas cascade constraints;

create table marcas(
    marca_id numeric,
    nombre_marca varchar2(50) not null,
    primary key(marca_id)
);

create table modelos(
    modelo_id numeric,
    marca_id numeric not null,
    nombre_modelo varchar2(50) not null,
    primary key(modelo_id),
    foreign key(marca_id) references marcas(marca_id) on delete cascade
);

create table vehiculos(
    vehiculos_id numeric,
    placa varchar2(50) not null,
    modelo_id numeric not null,
    color varchar2(50) not null,
    primary key(vehiculos_id),
    foreign key(modelo_id) references modelos(modelo_id)on delete cascade
);

create table conductores(
    conductor_id numeric,
    cedula numeric not null,
    nombre varchar2(50) not null,
    calificacion varchar2(2) not null,
    fecha_nacimiento date not null,
    primary key(conductor_id)
);

create table reservas(
    reserva_id numeric,
    conductor_id numeric not null,
    vehiculos_id numeric not null,
    fecha date not null,
    primary key(reserva_id),
    foreign key(conductor_id) references conductores(conductor_id) on delete cascade,
    foreign key(vehiculos_id) references vehiculos(vehiculos_id)on delete cascade
);




