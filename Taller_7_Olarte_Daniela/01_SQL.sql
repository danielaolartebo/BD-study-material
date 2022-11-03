{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /** 1 **/\
\
select pro.nombre, pro.precio, pro.precio*(4401.71)\
from productos pro;\
\
/** 2 **/\
\
select fa.fabricante_id\
from productos pro, fabricantes fa\
where pro.fabricante_id = fa.fabricante_id;\
\
/** 3 **/\
\
select fa.nombre\
from fabricantes fa\
order by fa.nombre asc;\
\
/** 4 **/\
\
select fa.nombre\
from fabricantes fa\
order by fa.nombre desc;\
\
/** 5 **/\
\
select pro.nombre\
from productos pro\
order by pro.nombre asc, pro.precio desc;\
\
/** 6 **/\
\
select pro.nombre, pro.precio\
from productos pro\
where pro.precio = (select min (pro.precio) from productos pro);\
\
/** 7 **/\
\
select pro.nombre, pro.precio\
from productos pro\
where pro.precio = (select max (pro.precio) from productos pro);\
\
/** 8 **/\
\
select pro.nombre, pro.precio\
from productos pro\
where pro.precio between 60 and 200;\
\
/** 9 **/\
\
select *\
from productos pro\
where  pro.fabricante_id in (1,3,5);\
\
/** 10 **/\
\
select fa.nombre\
from fabricantes fa\
where fa.nombre like 'S%';\
\
/** 11 **/\
\
select pro.nombre\
from productos pro\
where pro.nombre like '%Port\'e1til%';\
\
/** 12 **/\
\
select pro.nombre, pro.precio, fa.nombre\
from productos pro, fabricantes fa\
where pro.fabricante_id = fa.fabricante_id \
and pro.precio >= 180\
order by pro.precio desc, pro.nombre asc;\
\
/** 13 **/\
\
select avg(pro.precio)\
from productos pro;\
\
/** 14 **/\
\
select count(*)\
from fabricantes fa, productos pro\
where pro.fabricante_id = fa.fabricante_id\
and fa.nombre = 'Asus';\
\
/** 15 **/\
\
select sum(pro.precio)\
from fabricantes fa, productos pro\
where pro.fabricante_id = fa.fabricante_id\
and fa.nombre = 'Asus';\
\
/** 16 **/\
\
select fa.nombre, count(all pro.producto_id)\
from fabricantes fa left join productos pro on pro.fabricante_id = fa.fabricante_id group by fa.nombre\
order by count(all pro.producto_id) desc;}