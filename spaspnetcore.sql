CREATE DATABASE EF;
USE EF;

CREATE TABLE Usuarios(
	Id_Usuario INTEGER IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	Nombre VARCHAR(50),
	Edad INTEGER
);


CREATE PROCEDURE sp_obtener_usuarios
AS BEGIN
SELECT * FROM Usuarios
END


CREATE PROCEDURE sp_obtener_usuario
--este si necesita Identificador, o sea:
@Id_Usuario INTEGER
AS BEGIN 
SELECT * FROM Usuarios WHERE Id_Usuario=@Id_Usuario
END


CREATE PROCEDURE sp_insertar_usuario
@Nombre VARCHAR(50),
@Edad INTEGER
AS BEGIN
INSERT INTO Usuarios VALUES(@Nombre, @Edad)
END


CREATE PROCEDURE sp_actualizar_usuario
@Id_Usuario INTEGER,
@Nombre VARCHAR(50),
@Edad INTEGER
AS BEGIN
UPDATE Usuarios SET Nombre=@Nombre, Edad=@Edad WHERE Id_Usuario=@Id_Usuario
END

CREATE PROCEDURE sp_eliminar_usuario
@Id_Usuario INTEGER
AS BEGIN
DELETE Usuarios WHERE Id_Usuario=@Id_Usuario
END