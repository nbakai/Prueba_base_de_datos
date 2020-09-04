psql
CREATE DATABASE prueba;
\c prueba
CREATE TABLE cliente(id SERIAL PRIMARY KEY, nombre VARCHAR(60), rut VARCHAR(20) UNIQUE NOT NULL, direccion VARCHAR(100));

CREATE TABLE categoria(id SERIAL PRIMARY KEY, nombre VARCHAR(50) NOT NULL UNIQUE, descripcion VARCHAR(100));

CREATE TABLE factura(numero_factura SERIAL PRIMARY KEY,
cliente_id INT NOT NULL, fecha_factura DATE, subtotal
INT NOT NULL, iva FLOAT NOT NULL, precio_total INT NOT NULL);

CREATE TABLE producto(id SERIAL PRIMARY KEY,
nombre VARCHAR(50), descripcion VARCHAR(100),
valor_unitario INT NOT NULL, categoria_id
INT NOT NULL, FOREIGN KEY(categoria_id)
REFERENCES categoria(id));


CREATE TABLE listado_productos(
producto_id INT NOT NULL, cantidad INT NOT NULL,
valor_total_producto INT, factura_id
INT NOT NULL, FOREIGN KEY(producto_id)
REFERENCES producto(id), FOREIGN KEY
(factura_id) REFERENCES factura(numero_factura));

INSERT INTO cliente(nombre, rut, direccion) VALUES('
Alan Array', 120987654, 'Av. España 01');

INSERT INTO cliente(nombre, rut, direccion) VALUES('
Bulma Brown', 159872341, 'Av. Bulnes 01');

INSERT INTO cliente(nombre, rut, direccion) VALUES('
Edward Elric', 199801702, 'Francia 10');

INSERT INTO cliente(nombre, rut, direccion) VALUES('
Winry Rockbell', 200010098, 'Francia 20');

INSERT INTO cliente(nombre, rut, direccion) VALUES('
Alphonse Elric', 220100115, 'Francia 10');


INSERT INTO categoria(nombre,descripcion) VALUES
('pan', 'todo tipo de panes');

INSERT INTO categoria(nombre,descripcion) VALUES
('dulces', 'todo tipo de dulces para la once');

INSERT INTO categoria(nombre,descripcion) VALUES
('salado', 'comidas saladas para la once');

INSERT INTO producto(nombre,descripcion,valor_unitario,categoria_id)
VALUES('pan_amasado', 'pancito recién hecho', 800, 1);

INSERT INTO producto(nombre,descripcion,valor_unitario,categoria_id)
VALUES(
'marraqueta', 'epecial para la once', 500, 1);

INSERT INTO producto(nombre,descripcion,valor_unitario,categoria_id)
VALUES(
'Queque', 'con almendras', 600, 2);

INSERT INTO producto(nombre,descripcion,valor_unitario,categoria_id)
VALUES(
'Pastel_de_yoghurt', 'pastel con sabor a frambueza', 3500, 2);

INSERT INTO producto(nombre,descripcion,valor_unitario,categoria_id)
VALUES(
'Galletas', 'galletas surtidas', 1500, 2);

INSERT INTO producto(nombre,descripcion,valor_unitario,categoria_id)
VALUES(
'Pizza', 'pizza jamon queso', 1000, 3);

INSERT INTO producto(nombre,descripcion,valor_unitario,categoria_id)
VALUES(
'Empanada', 'empanada de pino', 1200, 3);

INSERT INTO producto(nombre,descripcion,valor_unitario,categoria_id)
VALUES(
'Sandwich', 'lechuga pollo tomate', 1800, 3);

----------------------------------------------------

INSERT INTO factura(cliente_id, fecha_factura, subtotal, iva,
precio_total) VALUES (1, '2020-03-28', 0, 0, 0);

 INSERT INTO listado_productos(producto_id,
cantidad,valor_total_producto,factura_id) VALUES(
2, 1, 800, 1);

INSERT INTO listado_productos(producto_id,
cantidad,valor_total_producto,factura_id) VALUES(
3, 1, 600, 1);

UPDATE factura SET subtotal=1400,precio_total=
1666, iva=266 WHERE numero_factura=1;

INSERT INTO factura(cliente_id, fecha_factura, subtotal, iva,
precio_total) VALUES (1, '2020-03-29', 0, 0, 0),
(2, '2020-04-01', 0, 0, 0),
(2, '2020-04-02',0,0,0),
(2, '2020-04-03',0,0,0),
(3, '2020-04-04',0,0,0),
(4, '2020-04-05',0,0,0),
(4, '2020-04-06',0,0,0),
(4, '2020-04-07',0,0,0),
(4, '2020-04-08',0,0,0);

INSERT INTO listado_productos(producto_id,
cantidad, valor_total_producto, factura_id)
VALUES 
(7, 3, 3600,2),
(6, 3, 3000, 3), 
(7, 1, 1200, 4), 
(8, 1, 1800, 4), 
(2, 3, 1500, 5), 
(6, 1, 1000, 6), 
(5, 1, 1500, 7), 
(2, 1, 500, 7), 
(1, 1, 800, 8), 
(3, 1, 600, 8), 
(5, 1, 1500, 8), 
(1, 2, 1600, 9), 
(7, 2, 2400, 9), 
(4, 1, 3500, 10);


 UPDATE factura SET subtotal=3600, precio_total=4284,
iva=685 WHERE numero_factura=2;
UPDATE 1
prueba=# UPDATE factura SET subtotal=3000, precio_total=3570,
iva=570 WHERE numero_factura=3;
UPDATE 1
prueba=# UPDATE factura SET subtotal=3000, precio_total=3570,
iva=570 WHERE numero_factura=4;
UPDATE 1
prueba=# UPDATE factura SET subtotal=1500, precio_total=1785,
iva=285 WHERE numero_factura=5;
UPDATE 1
prueba=# UPDATE factura SET subtotal=1000, precio_total=1190,
iva=190 WHERE numero_factura=6;
UPDATE 1
prueba=# UPDATE factura SET subtotal=1000, precio_total=2380,
iva=380 WHERE numero_factura=7;
UPDATE 1
prueba=# UPDATE factura SET subtotal=2900, precio_total=3451,
iva=551 WHERE numero_factura=8;
UPDATE 1
prueba=# UPDATE factura SET subtotal=4000, precio_total=4760,
iva=760 WHERE numero_factura=9;
UPDATE 1
prueba=# UPDATE factura SET subtotal=3500, precio_total=4165,
iva=665 WHERE numero_factura=10;
UPDATE 1


------------------------------------







