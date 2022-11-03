{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 drop table lab_pelicula;\
drop table lab_categoria;\
\
create table lab_categoria(\
    categoria_id number not null,\
    codigo varchar2(20) not null,\
    nombre varchar2(20) not null,\
    descripcion varchar2(100),\
    primary key(categoria_id)\
);\
\
comment on column lab_categoria.categoria_id is 'Id de la categoria en base de datos';\
comment on column lab_categoria.codigo is 'Codigo de la categoria';\
comment on column lab_categoria.nombre is 'Nombre de la categoria';\
comment on column lab_categoria.descripcion is 'Descripcion corta de la categoria';\
\
create table lab_pelicula(\
    pelicula_id number,\
    codigo varchar2(20) not null,\
    nombre varchar2(20) not null,\
    descripcion varchar2(50),\
    id_categoria number,\
    primary key(pelicula_id),\
    foreign key (id_categoria) references lab_categoria(categoria_id)\
);\
\
comment on column lab_pelicula.pelicula_id is 'Id de la pelicula en base de datos';\
comment on column lab_pelicula.codigo is 'Codigo de la pelicula';\
comment on column lab_pelicula.nombre is 'Nombre de la pelicula';\
comment on column lab_pelicula.descripcion is 'Descripcion corta de la pelicula';\
comment on column lab_pelicula.id_categoria is 'Id de la categoria';\
}