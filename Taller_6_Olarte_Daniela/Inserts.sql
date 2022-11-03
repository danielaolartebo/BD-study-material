INSERT INTO EDITORIALES (EDITORIAL_ID, NOMBRE, CIUDAD) VALUES (	1	, 'P1' , 'Cali');
INSERT INTO EDITORIALES (EDITORIAL_ID, NOMBRE, CIUDAD) VALUES (	2	, 'P2' , 'Bogotá');
INSERT INTO EDITORIALES (EDITORIAL_ID, NOMBRE, CIUDAD) VALUES (	3	, 'P3' , 'Medellín');
INSERT INTO EDITORIALES (EDITORIAL_ID, NOMBRE, CIUDAD) VALUES (	4	, 'P4' , 'Cali');
INSERT INTO EDITORIALES (EDITORIAL_ID, NOMBRE, CIUDAD) VALUES (	5	, 'P5' , 'Bogotá');
INSERT INTO EDITORIALES (EDITORIAL_ID, NOMBRE, CIUDAD) VALUES (	6	, 'P6' , 'Medellín');
INSERT INTO EDITORIALES (EDITORIAL_ID, NOMBRE, CIUDAD) VALUES (	7	, 'P7' , 'Cali');
INSERT INTO EDITORIALES (EDITORIAL_ID, NOMBRE, CIUDAD) VALUES (	8	, 'P8' , 'Bogotá');
INSERT INTO EDITORIALES (EDITORIAL_ID, NOMBRE, CIUDAD) VALUES (	9	, 'P9' , 'Medellín');
INSERT INTO EDITORIALES (EDITORIAL_ID, NOMBRE, CIUDAD) VALUES (	10	, 'P10' , 'Cali');

COMMIT;


INSERT INTO LIBRERIAS (LIBRERIA_ID, NOMBRE, CIUDAD) VALUES (	1	,'F1','Cali');
INSERT INTO LIBRERIAS (LIBRERIA_ID, NOMBRE, CIUDAD) VALUES (	2	,'F2','Medellín');
INSERT INTO LIBRERIAS (LIBRERIA_ID, NOMBRE, CIUDAD) VALUES (	3	,'F3','Bogotá');
INSERT INTO LIBRERIAS (LIBRERIA_ID, NOMBRE, CIUDAD) VALUES (	4	,'F4','Cartagena');
INSERT INTO LIBRERIAS (LIBRERIA_ID, NOMBRE, CIUDAD) VALUES (	5	,'F5','Pasto');
INSERT INTO LIBRERIAS (LIBRERIA_ID, NOMBRE, CIUDAD) VALUES (	6	,'F6','Cali');
INSERT INTO LIBRERIAS (LIBRERIA_ID, NOMBRE, CIUDAD) VALUES (	7	,'F7','Medellín');
INSERT INTO LIBRERIAS (LIBRERIA_ID, NOMBRE, CIUDAD) VALUES (	8	,'F8','Bogotá');
INSERT INTO LIBRERIAS (LIBRERIA_ID, NOMBRE, CIUDAD) VALUES (	9	,'F9','Cartagena');
INSERT INTO LIBRERIAS (LIBRERIA_ID, NOMBRE, CIUDAD) VALUES (	10	,'F10','Medellín');
INSERT INTO LIBRERIAS (LIBRERIA_ID, NOMBRE, CIUDAD) VALUES (	11	,'F11','Bogotá');
INSERT INTO LIBRERIAS (LIBRERIA_ID, NOMBRE, CIUDAD) VALUES (	12	,'F12','Cartagena');

COMMIT;

INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	1	, '1948','George Orwell');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	2	, 'Crimen y Castigo','Fiodor Dostoievski ');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	3	, 'El olvido que seremos','Hector Abad Faciolince');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	4	, 'Noticia de un secuestro','Gabriel García Márquez');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	5	, 'El retrato de Dorian Gray','Oscar Wilde');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	6	, 'Que viva la música','Andrés Caicedo');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	7	, 'Rebelión en la granja','George Orwell');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	8	, 'Noches blancas','Fiodor Dostoievski ');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	9	, 'La oculta','Hector Abad Faciolince');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	10	, 'La hojarasca','Gabriel García Márquez');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	11	, 'El ruiseñor y la rosa','Oscar Wilde');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	12	, 'Noche sin fortunna','Andrés Caicedo');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	13	, 'Homeaje a Cataluña','George Orwell');
INSERT INTO libros (libro_id, NOMBRE, AUTOR) VALUES (	14	, 'El jugador','Fiodor Dostoievski ');

COMMIT;


INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (1,11,10,5,1);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (2,12,10,5,10);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (3,21,10,8,2);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (4,22,10,8,10);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (5,31,10,8,4);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (6,32,1,5,4);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (7,38,1,5,6);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (8,42,1,6,1);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (9,47,1,6,3);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (10,52,1,7,1);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (11,56,1,7,3);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (12,61,3,12,14);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (13,66,3,12,13);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (14,70,3,12,12);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (15,75,3,2,1);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (16,21,9,2,10);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (17,22,9,2,2);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (18,31,9,2,8);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (19,15,9,2,4);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (20,20,9,10,4);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (21,32,9,10,6);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (22,38,5,10,1);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (23,42,5,10,3);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (24,47,5,10,8);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (25,22,5,7,3);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (26,31,5,7,14);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (27,15,4,7,13);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (28,16,4,7,12);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (29,12,4,7,10);
INSERT INTO pedidos (pedido_id, cantidad, editorial_id, libreria_id, libro_id) VALUES (30,9,4,7,4);

COMMIT;