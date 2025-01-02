create database rsocial;

create table usuarios (
	id INT primary key auto_increment,
	nombre_usuario VARCHAR (50),
	correo_electronico VARCHAR (100),
	contrasena VARCHAR (20),
	rol CHAR (20),
	fecha_creacion TIMESTAMP default CURRENT_TIMESTAMP,
	fecha_actualizacion TIMESTAMP default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);

select * from usuarios;

create table publicaciones (
	id INT primary key auto_increment,
	id_usuario INT,
	contenido VARCHAR(50),
	fecha_creacion TIMESTAMP default CURRENT_TIMESTAMP,
	fecha_actualizacion TIMESTAMP default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
	foreign key (id_usuario) references usuarios(id)
);

select * from publicaciones;

create table comentarios (
	id INT primary key auto_increment,
	id_publicacion INT,
	id_usuario INT,
	contenido VARCHAR (150),
	fecha_creacion TIMESTAMP default CURRENT_TIMESTAMP,
	fecha_actualizacion TIMESTAMP default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
	foreign key (id_usuario) references usuarios(id),
	foreign key (id_publicacion) references publicaciones(id)
);

select * from comentarios;