--- DML --- lenguaje de manipulación de datos (INSERT, SELECT, UPDATE, DELETE)
--- INSERT TIPO PRODUCTO
INSERT INTO TIPO_PRODUCTO (id_tipo,descripcion) VALUES (1,'COMIC');
INSERT INTO TIPO_PRODUCTO (id_tipo,descripcion) VALUES (2,'POLERA');
INSERT INTO TIPO_PRODUCTO (id_tipo,descripcion) VALUES (3,'PELICULA');
INSERT INTO TIPO_PRODUCTO (id_tipo,descripcion) VALUES (4,'FIGURA');
---- INSERT PRODUCTO
INSERT INTO PRODUCTO (cod_producto,descripcion,precio_unitario,id_tipo) VALUES (1,'WATCHMEN',25000,1); 
INSERT INTO PRODUCTO (cod_producto,descripcion,precio_unitario,id_tipo) VALUES (2,'Polera DEADPOOL',8000,2); 
INSERT INTO PRODUCTO (cod_producto,descripcion,precio_unitario,id_tipo) VALUES (3,'The Lord Of The Rings: Extended Edition',40000,3); 
INSERT INTO PRODUCTO (cod_producto,descripcion,precio_unitario,id_tipo) VALUES (4,'Joker 1:6 Hot Toys',300000,4); 
-- INSERT BOLETA
INSERT INTO BOLETA (nro_boleta,fecha,total) VALUES (1,TO_DATE('2020-07-06','YYYY-MM-DD'),373000);
--- INSERT DET_BOLETA
INSERT INTO DET_BOLETA (nro_boleta,cod_producto,cantidad,subtotal) VALUES (1,1,1,25000);
INSERT INTO DET_BOLETA (nro_boleta,cod_producto,cantidad,subtotal) VALUES (1,2,1,8000);
INSERT INTO DET_BOLETA (nro_boleta,cod_producto,cantidad,subtotal) VALUES (1,3,1,40000);
INSERT INTO DET_BOLETA (nro_boleta,cod_producto,cantidad,subtotal) VALUES (1,4,1,300000);

--- SELECT
--- SELECT [COLUMNAS] FROM [TABLA];
SELECT * FROM TIPO_PRODUCTO;
SELECT DESCRIPCION FROM TIPO_PRODUCTO;

SELECT * FROM PRODUCTO;

SELECT DESCRIPCION,PRECIO_UNITARIO FROM PRODUCTO;

--- SELECT [COLUMNAS] FROM [TABLA] WHERE [CONDICION];

SELECT DESCRIPCION, PRECIO_UNITARIO FROM PRODUCTO WHERE PRECIO_UNITARIO < 100000;


--- UPDATE --- INSTRUCCION PARA MODIFICAR DATOS
--- UPDATE [TABLA] SET [COLUMNA1] = VALOR, [COLUMNA2] = VALOR ... WHERE [CONDICION]
UPDATE PRODUCTO
SET PRECIO_UNITARIO = 200000, DESCRIPCION = 'Joker 1:6 Hot Toys OFERTA'
WHERE COD_PRODUCTO = 4;

SELECT * FROM PRODUCTO;

--- DELETE ELIMINAR DATOS
--- DELETE FROM [TABLA] WHERE [CONDICION]
SELECT * FROM DET_BOLETA;
DELETE FROM DET_BOLETA WHERE NRO_BOLETA = 1;
DELETE FROM BOLETA WHERE NRO_BOLETA = 1;
DELETE FROM PRODUCTO WHERE COD_PRODUCTO = 2;
























