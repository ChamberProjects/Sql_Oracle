----DDL definicion de datos
----OTROS CONSTRAINT (UNIQUE, CHECK)
CREATE TABLE CLIENTE
(id_cliente NUMBER(10) NOT NULL
,rut_cliente VARCHAR(10) NOT NULL
,nombre VARCHAR(50) NOT NULL
,ape_paterno VARCHAR(50) NOT NULL
,ape_materno VARCHAR(50) NOT NULL
,mail VARCHAR(100) NOT NULL
,CONSTRAINT CLIENTE_PK PRIMARY KEY(id_cliente)
,CONSTRAINT CLIENTE_MAIL_U UNIQUE(mail));
--- INSERT CON AUTO INCREMENTO 
--- OBJETO SEQUENCE
CREATE SEQUENCE SEC_CLIENTE INCREMENT BY 1 START WITH 1;

INSERT INTO CLIENTE(id_cliente,rut_cliente,nombre,ape_paterno,ape_materno,mail) 
VALUES(SEC_CLIENTE.nextval,'20555658-8','Ana','Rojas','Arredondo','arojas@mail.com');
INSERT INTO CLIENTE(id_cliente,rut_cliente,nombre,ape_paterno,ape_materno,mail) 
VALUES(SEC_CLIENTE.nextval,'9552655-8','Carlos','Reyes','Bustamante','creyes@mail.com');

SELECT * FROM CLIENTE;

INSERT INTO CLIENTE(id_cliente,rut_cliente,nombre,ape_paterno,ape_materno,mail) 
VALUES(SEC_CLIENTE.nextval,'18556997-K','María','Perez','Lopez','mperez@mail.com');

--- CONSTRAINT CHECK 
CREATE TABLE VENDEDOR
(id_vendedor NUMBER(10) NOT NULL
,rut VARCHAR(10) NOT NULL
,nombre VARCHAR(50) NOT NULL
,ape_paterno VARCHAR(50) NOT NULL
,ape_materno VARCHAR(50) NOT NULL
,mail VARCHAR(100) NOT NULL
,sueldo_base NUMBER(10) NOT NULL
,CONSTRAINT VENDEDOR_PK PRIMARY KEY(id_vendedor)
,CONSTRAINT VENDEDOR_MAIL_U UNIQUE(mail)
,CONSTRAINT VEND_SUELDO_CHK CHECK (sueldo_base BETWEEN 380000 AND 500000));

--,CONSTRAINT VEND_SUELDO_CHK CHECK (sueldo_base >= 380000));
CREATE SEQUENCE SEC_VENDEDOR INCREMENT BY 1 START WITH 1;

INSERT INTO VENDEDOR(id_vendedor,rut,nombre,ape_paterno,ape_materno,mail,sueldo_base)
VALUES (sec_vendedor.nextval,'15845655-8','Daniel','Bustos','Valdivia','dbustos@mail',450000);
INSERT INTO VENDEDOR(id_vendedor,rut,nombre,ape_paterno,ape_materno,mail,sueldo_base)
VALUES (sec_vendedor.nextval,'17556322-4','David','Rivera','Santander','drivera@mail',390000);

select * from vendedor;

INSERT INTO VENDEDOR(id_vendedor,rut,nombre,ape_paterno,ape_materno,mail,sueldo_base)
VALUES (sec_vendedor.nextval,'16554225-7','Cristian','Hormazabal','Peña','chormazabal@mail',500000);




















