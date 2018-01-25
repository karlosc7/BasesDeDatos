create database colegio;	-- Creamos la BBDD crud

use colegio;

/*
Creamos las tablas alumnos, asignaturas  y notas
*/
create table alumnos
(dni int(10) not null,
nombre varchar(255) not null,
primary key (dni)
);

create table asignaturas
(cod_asig int not null,
nombre_asig varchar(255) not null,
primary key (cod_asig)
);

create table notas
(cod_notas int not null,
dni int(10) not null,
calificacion int(2) not null,
primary key (cod_notas)
);

-- Introducimos datos en las tablas
insert into alumnos (dni, nombre) values
(1,"carlos"),
(2,"jorge"),
(3,"oscar"),
(4,"david");

insert into asignaturas (cod_asig, nombre_asig) values
(1,"ASO"),
(2,"ASGBD"),
(3,"SRI"),
(4,"WEB");

insert into notas (cod_notas, dni, calificacion) values
(1,4,9),
(2,3,8),
(3,2,7),
(4,1,6);

create user 'pri_user'@'localhost' identified by 'administrador';
create user 'normal_user'@'localhost' identified by 'usuario_Normal';

--Damos permisos a los diferentes usuarios de la BBDD
grant create on colegio.* to admin@localhost;
grant alter on colegio.* to admin@localhost;
grant drop on colegio.* to discarlosdel@localhost;
grant select on colegio.* to progrcarlosdel@localhost;
grant insert on colegio.* to progrcarlosdel@localhost;
grant update on colegio.* to progrcarlosdel@localhost;
grant delete on colegio.* to progrcarlosdel@localhost;
grant select on colegio.* to usuariocarlosdel@localhost;