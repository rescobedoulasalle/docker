--Crear una base de datos
CREATE DATABASE menagerie;

--Crear usuario en mysql
CREATE USER 'pweb'@'localhost' IDENTIFIED BY '12345678';
CREATE USER 'pweb'@'%' IDENTIFIED BY '12345678';

--Otorgar permisos a un usuario para una BD
GRANT ALL PRIVILEGES ON menagerie.* TO 'pweb'@'localhost';
GRANT ALL PRIVILEGES ON menagerie.* TO 'pweb'@'%';

--Refrescar permisos y credenciales
FLUSH PRIVILEGES;
