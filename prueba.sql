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
precio_total) VALUES(
1, '2020-03-28', 0, 0, 0);

 INSERT INTO listado_productos(producto_id,
cantidad,valor_total_producto,factura_id) VALUES(
2, 1, 800, 1);

INSERT INTO listado_productos(producto_id,
cantidad,valor_total_producto,factura_id) VALUES(
3, 1, 600, 1);

UPDATE factura SET subtotal=1400,precio_total=
1666 WHERE numero_factura=1;






