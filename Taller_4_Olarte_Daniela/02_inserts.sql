insert into marcas (marca_id, nombre_marca) values(1, 'BMW');
insert into marcas (marca_id, nombre_marca) values(2, 'Ford');
insert into marcas (marca_id, nombre_marca) values(3, 'Subaru');


insert into modelos (modelo_id, marca_id, nombre_modelo) values(1,1,'Gran coupe');
insert into modelos (modelo_id, marca_id, nombre_modelo) values(2,2,'EcoSport');
insert into modelos (modelo_id, marca_id, nombre_modelo) values(3,3,'Forester');
insert into modelos (modelo_id, marca_id, nombre_modelo) values(4,3,'Impreza');
insert into modelos (modelo_id, marca_id, nombre_modelo) values(5,1,'M3 Sedán');
insert into modelos (modelo_id, marca_id, nombre_modelo) values(6,1,'M4 Coupé Competition');


insert into vehiculos (vehiculos_id, placa, modelo_id, color) values(1, 'CPB258', 1, 'Azul');
insert into vehiculos (vehiculos_id, placa, modelo_id, color) values(2, 'CQB259', 3, 'Gris Plata');
insert into vehiculos (vehiculos_id, placa, modelo_id, color) values(3, 'APB260', 4, 'Negro');
insert into vehiculos (vehiculos_id, placa, modelo_id, color) values(4, 'CPH261', 5, 'Rojo');
insert into vehiculos (vehiculos_id, placa, modelo_id, color) values(5, 'FPB262', 6, 'Negro');
insert into vehiculos (vehiculos_id, placa, modelo_id, color) values(6, 'CKB263', 2, 'Blanco');
insert into vehiculos (vehiculos_id, placa, modelo_id, color) values(7, 'GPB264', 2, 'Azul');
insert into vehiculos (vehiculos_id, placa, modelo_id, color) values(8, 'CHB265', 5, 'Gris Plata');


insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(1, 1130, 'Amelie', 8, '17/09/1980');
insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(2, 1140, 'Ana', 6, '17/08/1981');
insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(3, 1150, 'Li', 10, '02/04/1989');
insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(4, 1160, 'Andrés', 5, '17/09/1983');
insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(5, 1170, 'Oscar', 9, '11/09/1984');
insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(6, 1180, 'Felipe', 2, '17/05/1985');
insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(7, 1190, 'Martina', 6, '27/06/1986');
insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(8, 1200, 'Juan', 9, '17/09/1987');
insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(9, 1210, 'Miguel', 8, '20/09/1988');
insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(10, 1220, 'Marcela', 5, '17/12/1989');
insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(11, 1230, 'Alejandro', 4, '25/09/1990');
insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(12, 1240, 'Camila', 7, '11/03/1991');
insert into conductores (conductor_id, cedula, nombre, calificacion, fecha_nacimiento) values(13, 1250, 'Eddie', 9, '17/09/1992');


insert into reservas (reserva_id, conductor_id, vehiculos_id, fecha) values (1, 4, 3, '12/02/2022');
insert into reservas (reserva_id, conductor_id, vehiculos_id, fecha) values (2, 5, 4, '15/03/2022');
insert into reservas (reserva_id, conductor_id, vehiculos_id, fecha) values (3, 6, 5, '12/04/2022');
insert into reservas (reserva_id, conductor_id, vehiculos_id, fecha) values (4, 7, 6, '20/05/2022');
insert into reservas (reserva_id, conductor_id, vehiculos_id, fecha) values (5, 8, 7, '12/06/2022');
insert into reservas (reserva_id, conductor_id, vehiculos_id, fecha) values (6, 9, 7, '18/07/2022');
insert into reservas (reserva_id, conductor_id, vehiculos_id, fecha) values (7, 6, 4, '05/08/2022');
insert into reservas (reserva_id, conductor_id, vehiculos_id, fecha) values (8, 7, 4, '12/09/2022');
insert into reservas (reserva_id, conductor_id, vehiculos_id, fecha) values (9, 8, 6, '23/10/2022');