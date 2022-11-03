/** Query 1 **/
select edi.nombre
from editoriales edi, pedidos pe
where edi.editorial_id = pe.editorial_id;

/** Query 2 **/
select edi.editorial_id, edi.nombre
from editoriales edi, pedidos pe
where edi.editorial_id = pe.editorial_id
and edi.ciudad = 'Cali';

/** Query 3 **/
select libre.nombre, lib.nombre
from librerias libre, libros lib, pedidos pe
where libre.libreria_id = pe.libreria_id
and lib.libro_id = pe.libro_id;

/** Query 4 **/
select libre.nombre
from librerias libre, editoriales edito, pedidos pe
where libre.libreria_id = pe.libreria_id
and edito.editorial_id = pe.editorial_id
and edito.ciudad = 'Cali';

/** Query 5 **/
select edito.nombre 
from editoriales edito, libros lib, pedidos pe
where edito.editorial_id = pe.editorial_id
and lib.libro_id = pe.libro_id
and lib.nombre = 'La hojarasca';

/** Query 6 **/
select edito.nombre 
from editoriales edito, libros lib, pedidos pe
where edito.editorial_id = pe.editorial_id
and lib.libro_id = pe.libro_id
and lib.autor = 'Hector Abad Faciolince';

/** Query 7 **/
select distinct edito.editorial_id
from editoriales edito, libros lib, pedidos pe
where edito.editorial_id = pe.editorial_id
and lib.libro_id = pe.libro_id
and edito.nombre != 'P4'
and lib.libro_id in (
        select lib2.libro_id
        from editoriales edito2, libros lib2, pedidos pe2
        where edito2.editorial_id = pe2.editorial_id
        and lib2.libro_id = pe2.libro_id
        and edito2.nombre = 'P4');

