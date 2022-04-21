CREATE DATABASE ADATT
CHARACTER SET latin1 COLLATE latin1_spanish_ci;
USE ADATT;

CREATE TABLE Articulos(
	dni varchar(10),
	nombre char(10),
    apellidos char(10),
    fecha_nac date,
    tfno int(10),
PRIMARY KEY (dni)
) engine = innodb;
CREATE TABLE Proveedor(
	nif varchar(10),
	nombre char(10),
    direccion varchar(10),
PRIMARY KEY (nif) 
) engine = innodb;
CREATE TABLE Articulos(
	codigo int auto_increment,
	descripcion char(50),
	precio float(10),
   
PRIMARY KEY (codigo),FOREIGN KEY (nif) references Proveedor(nif) on delete cascade on update cascade
) engine = innodb;

CREATE TABLE Compra(
	dni varchar(10),
	codigo int auto_increment,
PRIMARY KEY (dni), FOREIGN KEY (dni) references Cliente(dni) on delete cascade on update cascade
, FOREIGN KEY (codigo) references Producto(codigo) on delete cascade on update cascade
) engine = innodb;
#show create table Producto;
drop database ADATT;
