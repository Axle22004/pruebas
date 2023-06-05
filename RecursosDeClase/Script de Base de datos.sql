drop database biblioteca;

Create database biblioteca;
Use biblioteca;

CREATE TABLE materia
(
CodMateria	INT	primary key AUTO_INCREMENT,
nomMateria	Varchar(50) not null
);
create table libro(
idlibro  int primary key AUTO_INCREMENT,
nomlibro varchar(50) not null,
npaginas int ,
codmateria  int,
FOREIGN KEY(CodMateria) references Materia(CodMateria)
);
CREATE TABLE ejemplar
(
idEjemplar	int PRIMARY KEY AUTO_INCREMENT,
estado		varchar(25) NOT NULL,
codLibro	int NOT NULL,
Foreign key(CodLibro) REFERENCES LIBRO(idLibro)
);
create table usuario
(
idUsuario	int  primary key auto_increment,
nombres		varchar(40) not null,
apellidos	varchar(50) not null,
direccion	varchar(100) not null,
ocupacion	varchar(30)
);
create table prestamo
(
idPrestamo  int  primary key auto_increment,
fechaPrestamo date not null,
CodEjemplar		int not null,
CodUsuario		int not null,
foreign key(CodEjemplar) References	Ejemplar(idEjemplar),
foreign key(CodUsuario) References	Usuario(idUsuario)
);


INSERT INTO materia values(null,'Base de datos');
INSERT INTO materia values(null,'Analisís de sistemas');
INSERT INTO materia values(null,'Lenguaje de programación');
INSERT INTO materia values(null,'Algoritmos');
INSERT INTO materia values(null,'Ing. de Software');


INSERT INTO libro values(null,'Oracle',100,1);
INSERT INTO libro values(null,'Java',300,2);
INSERT INTO libro values(null,'Mysql',200,1);
INSERT INTO libro values(null,'Pseudocodigo',250,4);
INSERT INTO libro values(null,'DFD',350,4);

INSERT INTO USUARIO VALUES(null,'Jeremy','Tello','Ate','Estudiante');
INSERT INTO USUARIO VALUES(null,'Yolfer','Rosales','Lima','Docente');
INSERT INTO USUARIO VALUES(null,'Juan','Diaz','Molina','Docente');
INSERT INTO USUARIO VALUES(null,'Carlos','Bracho','Santa Clara','Estudiante');
INSERT INTO USUARIO VALUES(null,'Flor','Perez','Piura','Estudiante');
INSERT INTO USUARIO VALUES(null,'Martin','Huaman','Ica','Docente');
INSERT INTO USUARIO VALUES(null,'Federico','Valverde','Lima Norte','Estudiante');
INSERT INTO USUARIO VALUES(null,'Julieta','Ponce','Ate','Docente');
INSERT INTO USUARIO VALUES(null,'Cristiano','Laverde','Miraflores','Docente');
INSERT INTO USUARIO VALUES(null,'Pedro','Gavi','Lima Norte','Docente');
INSERT INTO Usuario VALUES(null,"Jesus","Rojas","Rimac","Medico");
INSERT INTO Usuario VALUES(null,"Jose","Sanchez","Surco","Abogado");
INSERT INTO Usuario VALUES(null,"Jeremy","Caceres","San Isidro","Profesor");
INSERT INTO Usuario VALUES(null,"Pedro","Rosario","Cercado","Contador");
INSERT INTO Usuario VALUES(null,"Pablo","Maldonado","San Martin","Gerente");
INSERT INTO Usuario VALUES(null,"Juan","Corrales","Independencia","Vendedor");
INSERT INTO Usuario VALUES(null,"Martin","Polares","Ate","Promotor");
INSERT INTO Usuario VALUES(null,"Manuel","Perez","Callao","Cantante");
INSERT INTO Usuario VALUES(null,"Gustavo","Cabrera","Miraflores","Pintor");
INSERT INTO Usuario VALUES(null,"Sofia","Cardenas","San Borja","Dentista");
insert into usuario values(null, "Joan", "Callañaupa","Vitarte","Programacion");
insert into usuario values(null, "Carlos", "Duran","Vitarte","Administración");
insert into usuario values(null, "Leslie", "Moran","Vitarte","Psicologia");
insert into usuario values(null, "Daniel", "Soto","Vitarte","Programacion");
insert into usuario values(null, "Juan", "Callañaupa","Vitarte","Programacion");
insert into usuario values(null, "Sebastian", "Duran","Vitarte","Administración");
insert into usuario values(null, "Jimena", "Salazar","Vitarte","Psicologia");
insert into usuario values(null, "Fernando", "Rodrigez","Vitarte","Programacion");
insert into usuario values(null, "Luis", "Torres","Vitarte","Programacion");

INSERT INTO ejemplar VALUES(null, "Bueno", 1);
INSERT INTO ejemplar VALUES(null, "Regular", 2);
INSERT INTO ejemplar VALUES(null, "Malo", 3);
INSERT INTO ejemplar VALUES(null, "Muy Bueno", 4);
INSERT INTO ejemplar VALUES(null, "Perfecto", 5);
INSERT INTO ejemplar VALUES(null,'Malo',1);
INSERT INTO ejemplar VALUES(null,'Bueno',2);
INSERT INTO ejemplar VALUES(null,'Medio',3);
INSERT INTO ejemplar VALUES(null,'Bueno',4);
INSERT INTO ejemplar VALUES(null,'Malo',5);
INSERT INTO ejemplar VALUES(null, "Bueno", 1);
INSERT INTO ejemplar VALUES(null, "Bueno", 2);
INSERT INTO ejemplar VALUES(null, "Malo", 3);
INSERT INTO ejemplar VALUES(null, "Malo", 4);
INSERT INTO ejemplar VALUES(null, "Bueno", 5);
INSERT INTO ejemplar VALUES(null,'Bueno',1);
INSERT INTO ejemplar VALUES(null,'Regular',2);
INSERT INTO ejemplar VALUES(null,'Malo',3);
INSERT INTO ejemplar VALUES(null,'Bueno',4);
INSERT INTO ejemplar VALUES(null,'Bueno',5);


INSERT INTO prestamo VALUES(null,"2022-08-10",1,1);
INSERT INTO prestamo VALUES(null,"2022-09-18",2,2);
INSERT INTO prestamo VALUES(null,"2022-10-04",3,3);
INSERT INTO prestamo VALUES(null,"2022-11-20",4,4);
INSERT INTO prestamo VALUES(null,"2022-12-20",5,5);
INSERT INTO prestamo VALUES(null,'2022/08/12',1,1);
INSERT INTO prestamo VALUES(null,'2022/05/21',2,2);
INSERT INTO prestamo VALUES(null,'2022/03/25',3,3);
INSERT INTO prestamo VALUES(null,'2022/07/30',4,4);
INSERT INTO prestamo VALUES(null,'2022/05/08',5,5);

Select * from materia;
Select * from libro;
Select * from ejemplar;
Select * from usuario;
Select * from prestamo;

