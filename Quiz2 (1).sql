Create database dbRevistasQuiz

--Querys de la creacion de tablas Punto 1
create table Revista
(
ISSN varchar(50) primary key,
Titulo nvarchar(50) NOT NULL,
NPublicacion int NOT NULL,
Apublicacion nvarchar(50) NOT NULL
)

create table Cliente
(
Nidentificacion varchar(50) primary key,
Nombre nvarchar(50) NOT NULL,
Telefono int NOT NULL,
)

create table Revista_Cliente
(
ISSN varchar(50) foreign key references Revista (ISSN),
Nidentificacion varchar(50) foreign key references Cliente(Nidentificacion)
)

create table Articulo
(
Titulo nvarchar(50) primary key,
PagI int NOT NULL,
PagF int NOT NULL,
ISSN varchar(50) foreign key references Revista(ISSN)
)

create table Autor
(
IDAutor varchar(50) primary key,
Nombre nvarchar (50) NOT NULL,
Correo nvarchar(50) NOT NULL,
Adscripcion nvarchar(50)
)

create table Articulo_Autor
(
Titulo nvarchar(50) foreign key references Articulo(Titulo),
IDAutor varchar(50) foreign key references Autor(IDAutor)
)

--Querys de ingreso de datos Punto 2

values('ATC-001','Ibague el nuevo mundo', 001, '2000')
insert into Revista values('ATC-002','Vea', 002, '2016')
insert into Revista values('ATC-003','pasto', 003, '2002')
insert into Revista values('ATC-004','santa marta el imformador', 004, '2019')
insert into Revista values('ATC-005','Elle', 005, '1956')
insert into Revista values('ATC-006','Emprendedores', 006, '2015')
insert into Revista values('ATC-007','economia y finanzas', 007, '2010')
insert into Revista values('ATC-008','Epicurious', 008, '2003')

Select * from Revista

insert into Cliente values('100001', 'Juan Gonzalez', 255678)
insert into Cliente values('100002', 'Luz maria veles', 259876)
insert into Cliente values('100003', 'Claribeth Gonzalez', 3627626)
insert into Cliente values('100004', 'Jose Maria salgado', 29563461)
insert into Cliente values('100005', 'Sandra Salazar ', 2735826)
insert into Cliente values('100006', 'Julian Estrada', 3620099)
insert into Cliente values('100007', 'Maria Clara Espinoza', 2509870)
insert into Cliente values('100008', 'rosa de la cruz', 9061249)
insert into Cliente values('100009', 'Pedro Mogollon', 89645026)
insert into Cliente values('100010', 'Breid de Smiel ', 2489966)
insert into Cliente values('100011', 'Camila sosa', 4128916)
insert into Cliente values('100012', 'Ruviela sarmon', 3550036)

Select * from Cliente

insert into Articulo values('universidad nacional de autonomia de mexico', 12, 20, 'ATC-001')
insert into Articulo values('Aislamiento contra el covid', 10, 19, 'ATC-001')
insert into Articulo values('Colombia tras la violencia', 2, 8, 'ATC-004')
insert into Articulo values('Tiene la curcura efectos medicinales', 5, 15, 'ATC-005')
insert into Articulo values('post trumt', 20, 22, 'ATC-002')
insert into Articulo values('el oceano y sus descubrimientos', 5, 12, 'ATC-005')
insert into Articulo values('el corazon helado', 30, 32, 'ATC-008')
insert into Articulo values('El ADN ', 7, 10, 'ATC-007')
insert into Articulo values('La Nasa descubre una sirena', 12, 20, 'ATC-004')
insert into Articulo values('5 estudiantes roban el examen final', 2, 5, 'ATC-003')
insert into Articulo values('caso de nueva enfermedad ', 3, 5, 'ATC-001')
insert into Articulo values('el joker apuñalio a 12 personas', 16, 25, 'ATC-005')
Select * from Articulo

insert into Autor values('A-01', 'Ebson Gutierrez', 'Ebson@correo.iue.edu.co', 'AT-01')
insert into Autor values('A-02', 'Yamileth avilez', 'YAvilez@correo.iue.edu.co', 'AT-02')
insert into Autor values('A-03', 'Francisco Henao', 'Francisco@correo.iue.edu.co', 'A-03')
insert into Autor values('A-04', 'Kibson Mosquera', 'Kmosquera@correo.iue.edu.co', 'A-04')
insert into Autor values('A-05', 'Julian Muños', 'Muñosjul@correo.iue.edu.co', 'AT-05')
insert into Autor values('A-06', 'Wuliam Tabera', 'Wtabera@correo.iue.edu.co', 'AT-06')
insert into Autor values('A-07', 'Edwin Cardona', 'Ecardona@correo.iue.edu.co', 'AT-07')
insert into Autor values('A-08', 'Nazaret Ortiz', 'Nortiz@correo.iue.edu.co', 'AT-08')
insert into Autor values('A-09', 'Alejandra Correa', 'Acorrea@correo.iue.edu.co', 'AT-09')
insert into Autor values('A-10', 'Jose carlos perez', 'Jperez@correo.iue.edu.co', 'AT-10')
insert into Autor values('A-11', 'Manila betancur', 'Betancur@correo.iue.edu.co', 'AT-11')
insert into Autor values('A-12', 'Miguel Calle', 'Mcalle@correo.iue.edu.co', 'AT-12')

Select * from Autor

insert into Revista_Cliente values('ATC-005','100001')
insert into Revista_Cliente values('ATC-002','100005')
insert into Revista_Cliente values('ATC-001','100004')
insert into Revista_Cliente values('ATC-008','100008')
insert into Revista_Cliente values('ATC-006','100006')
insert into Revista_Cliente values('ATC-004','100003')
insert into Revista_Cliente values('ATC-003','100007')
insert into Revista_Cliente values('ATC-007','100004')
insert into Revista_Cliente values('ATC-008','100002')
insert into Revista_Cliente values('ATC-003','100012')
insert into Revista_Cliente values('ATC-006','100011')
insert into Revista_Cliente values('ATC-005','100010')
insert into Revista_Cliente values('ATC-007','100001')
insert into Revista_Cliente values('ATC-006','100010')
insert into Revista_Cliente values('ATC-005','100008')

delete from Revista_Cliente

Select * from Revista_Cliente

insert into Articulo values('universidad nacional de autonomia de mexico', 12, 20, 'ATC-001')
insert into Articulo values('Aislamiento contra el covid', 10, 19, 'ATC-001')
insert into Articulo values('Colombia tras la violencia', 2, 8, 'ATC-004')
insert into Articulo values('Tiene la curcura efectos medicinales', 5, 15, 'ATC-005')
insert into Articulo values('post trumt', 20, 22, 'ATC-002')
insert into Articulo values('el oceano y sus descubrimientos', 5, 12, 'ATC-005')
insert into Articulo values('el corazon helado', 30, 32, 'ATC-008')
insert into Articulo values('El ADN ', 7, 10, 'ATC-007')
insert into Articulo values('La Nasa descubre una sirena', 12, 20, 'ATC-004')
insert into Articulo values('5 estudiantes roban el examen final', 2, 5, 'ATC-003')
insert into Articulo values('caso de nueva enfermedad ', 3, 5, 'ATC-001')
insert into Articulo values('el joker apuñalio a 12 personas', 16, 25, 'ATC-005')

Select * from Articulo_Autor

--Querys Punto 3

Select * from Revista_Cliente

select C.Nombre 'Nombre Cliente', C.Nidentificacion 'identificación', R.Titulo 'Titulo revista'
From Cliente C, Revista_Cliente RC, Revista R
where C.Nidentificacion = RC.Nidentificacion and RC.ISSN=R.ISSN

--100001 = AAA-005 AAA-007
--100004 = AAA-001 AAA-007
--100005 = AAA-002 AAA-008
--100008 = AAA-005 AAA-008
--100010 = AAA-005 AAA-006

Select C.Nombre, C.Nidentificacion, R.Titulo, R.ISSN
from Cliente C, Revista_Cliente RC, Revista R
where R.Titulo = C.Nombre and c.Nidentificacion =
ORDER BY F.Nombre


SELECT R.Nidentificacion, C.Nombre FROM Revista_Cliente R, Cliente C group by R.Nidentificacion, C.Nombre having count(1)>=2
Select Nombre FROM Cliente group by Nombre Having Count (1)>=2

--Select max(Precio) from ARTICULO A where A.Fabricante = F.Codigo


