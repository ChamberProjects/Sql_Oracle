--- CREACION DE USUARIO
CREATE USER TIENDA IDENTIFIED BY 123456;
--- DAR PERMISOS DE CONEXI�N Y RECURSOS AL USUARIO
GRANT CONNECT, RESOURCE TO TIENDA;