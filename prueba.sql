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



