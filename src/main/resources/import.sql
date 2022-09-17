/* tabla regiones */
INSERT INTO regiones (id, nombre) VALUES (1, 'Sudamérica');
INSERT INTO regiones (id, nombre) VALUES (2, 'Centroamérica');
INSERT INTO regiones (id, nombre) VALUES (3, 'Norteamérica');
INSERT INTO regiones (id, nombre) VALUES (4, 'Europa');
INSERT INTO regiones (id, nombre) VALUES (5, 'Asia');
INSERT INTO regiones (id, nombre) VALUES (6, 'Africa');
INSERT INTO regiones (id, nombre) VALUES (7, 'Oceanía');
INSERT INTO regiones (id, nombre) VALUES (8, 'Antártida');

/* tabla clientes */

insert into clientes (region_id, nombre, apellido,email, create_at) values(4,'paco','leon','paleon@mail.com','2017-02-12');
insert into clientes(region_id, nombre,apellido,email,create_at) values(2,'lucas','lopez','lulo@mail.com','2018-03-18');
insert into clientes(region_id, nombre,apellido,email,create_at) values(1,'luis','Moreno','lumo@mail.com','2018-04-24');
insert into clientes(region_id, nombre,apellido,email,create_at) values(5,'andres','perez','anpe@mail.com','2019-02-01');
insert into clientes(region_id, nombre,apellido,email,create_at) values(3,'diego','ramirez','dira@mail.com','2018-10-12');
insert into clientes(region_id, nombre,apellido,email,create_at) values(8,'thiago','malat','thima@mail.com','2018-11-19');

/* Creamos algunos usuarios con sus roles */
INSERT INTO `usuarios` (username, password, enabled, nombre, apellido, email) VALUES ('andres','$2a$10$C3Uln5uqnzx/GswADURJGOIdBqYrly9731fnwKDaUdBkt/M3qvtLq',1, 'Andres', 'Guzman','profesor@bolsadeideas.com');
INSERT INTO `usuarios` (username, password, enabled, nombre, apellido, email) VALUES ('admin','$2a$10$RmdEsvEfhI7Rcm9f/uZXPebZVCcPC7ZXZwV51efAvMAp1rIaRAfPK',1, 'John', 'Doe','jhon.doe@bolsadeideas.com');

INSERT INTO `roles` (nombre) VALUES ('ROLE_USER');
INSERT INTO `roles` (nombre) VALUES ('ROLE_ADMIN');

INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (1, 1);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (2, 2);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (2, 1);