CREATE DATABASE Focus_Mind;
USE Focus_Mind;


CREATE TABLE Personas (
IdPersonas INT PRIMARY KEY,
Nombre VARCHAR(45),
Contraseña VARCHAR(50),
Correo VARCHAR(100)
);

CREATE TABLE Recordatorios (
IdUsuario INT PRIMARY KEY,
Fecha DATETIME,
Decripcion TEXT,
IdRecordatorios INT
);

CREATE TABLE Planificador (
IdPlanificador INT PRIMARY KEY,
IdUsuario INT,
Nombre VARCHAR(50),
IdActividad INT
);

CREATE TABLE Actividades (
IdActividades INT PRIMARY KEY,
Nombre VARCHAR(40),
Descripcion TEXT(1000),
Fecha_inicio DATETIME,
Fecha_fin DATETIME,
Tipo_Actividad INT
);

CREATE TABLE TipoActividad (
IdTipoActividad INT PRIMARY KEY,
Nombre VARCHAR(45)
);

 

ALTER TABLE Recordatorios
ADD CONSTRAINT FK_Recordatorios
FOREIGN KEY (IdUsuario)
REFERENCES Personas(IdPersonas);

ALTER TABLE Planificador
ADD CONSTRAINT FK_Planificador
FOREIGN KEY (IdUsuario)
REFERENCES Personas(IdPersonas);

ALTER TABLE Planificador
ADD CONSTRAINT FK_PlanificadorActividades
FOREIGN KEY (IdActividad)
REFERENCES Actividades(IdActividades);

ALTER TABLE Actividades
ADD CONSTRAINT FK_Actividades
FOREIGN KEY (Tipo_Actividad)
REFERENCES TipoActividad(IdTipoActividad);

INSERT INTO Personas (IdPersonas, Nombre, Contraseña, Correo)
VALUES (1, 'Juan Perez', 'contraseña123', 'juan.perez@gmail.com'),
       (2, 'Maria Rodriguez', 'maria456', 'maria.rodriguez@gmail.com'),
       (3, 'Carlos Gomez', 'carlos789', 'carlos.gomez@gmail.com'),
       (4, 'Ana Torres', 'ana101112', 'ana.torres@gmail.com'),
       (5, 'Pedro Ruiz', 'pedro131415', 'pedro.ruiz@gmail.com');

INSERT INTO TipoActividad (IdTipoActividad, Nombre)
VALUES (1, 'Deporte'),
       (2, 'Estudio'),
       (3, 'Música'),
       (4, 'Videojuegos'),
       (5, 'Otros');

INSERT INTO Actividades (IdActividades, Nombre, Descripcion, Fecha_inicio, Fecha_fin, Tipo_Actividad)
VALUES (1, 'Correr en el parque', 'Correr 5km en el parque', '2024-05-20 08:00:00', '2024-05-20 09:00:00', 1),
       (2, 'Estudiar para el examen', 'Estudiar para el examen de matemáticas', '2024-05-20 10:00:00', '2024-05-20 12:00:00', 2),
       (3, 'Reunión con el equipo', 'Reunión para discutir el proyecto', '2024-05-20 15:00:00', '2024-05-20 16:00:00', 3),
       (4, 'Ver una película', 'Ver una película en Netflix', '2024-05-20 20:00:00', '2024-05-20 22:00:00', 4),
       (5, 'Hacer la compra', 'Hacer la compra de la semana', '2024-05-20 12:00:00', '2024-05-20 13:00:00', 5);

INSERT INTO Recordatorios (IdUsuario, Fecha, Decripcion, IdRecordatorios)
VALUES (1, '2024-05-20 07:00:00', 'Recordatorio para correr en el parque', 1),
       (2, '2024-05-20 09:00:00', 'Recordatorio para estudiar para el examen', 2),
       (3, '2024-05-20 14:00:00', 'Recordatorio para la reunión con el equipo', 3),
       (4, '2024-05-20 19:00:00', 'Recordatorio para ver una película', 4),
       (5, '2024-05-20 11:00:00', 'Recordatorio para hacer la compra', 5);

INSERT INTO Planificador (IdPlanificador, IdUsuario, Nombre, IdActividad)
VALUES (1, 1, 'Planificador de Juan', 1),
       (2, 2, 'Planificador de Maria', 2),
       (3, 3, 'Planificador de Carlos', 3),
       (4, 4, 'Planificador de Ana', 4),
       (5, 5, 'Planificador de Pedro', 5);


