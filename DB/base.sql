USE master;
GO

CREATE DATABASE BDClinica
ON(NAME = BDClinica,
FILENAME = 'C:\BASES\BDClinica.mdf')
GO

USE BDClinica;
GO

CREATE TABLE Provincia
(
    ID_prov int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Nombre_prov varchar(50) NOT NULL
)
GO

CREATE TABLE Localidad
(
    ID_loca int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    IDProv_loca int NOT NULL,
    Nombre_loca varchar(50) NOT NULL,
    CONSTRAINT FK_localidad_provincia FOREIGN KEY (IDProv_loca) REFERENCES Provincia(ID_prov)
)
GO

CREATE TABLE Especialidad
(
    ID_esp int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Nombre_esp varchar(50) NOT NULL
)
GO



CREATE TABLE Paciente
(
    DNI_pc varchar(10) NOT NULL PRIMARY KEY,
    Nombre_pc varchar(50) NOT NULL,
    Apellido_pc varchar(50) NOT NULL,
    Sexo_pc varchar(10) NOT NULL,
    Nacionalidad_pc varchar(50) NOT NULL,
    FechaNacimiento_pc date NOT NULL,
    Direccion_pc varchar(50) NOT NULL,
    Localidad_pc int NOT NULL,
    CorreoElectronico_pc varchar(50) NOT NULL,
    Telefono_pc varchar(50) NOT NULL,
	Estado_pc bit NOT NULL default 1,
    CONSTRAINT FK_paciente_localidad FOREIGN KEY (Localidad_pc) REFERENCES Localidad(ID_loca)
)
GO

CREATE TABLE Medico
(
    Legajo_me int IDENTITY(10,1) NOT NULL PRIMARY KEY,
    DNI_me varchar(10) NOT NULL,
    Nombre_me varchar(50) NOT NULL,
    Apellido_me varchar(50) NOT NULL,
    Sexo_me varchar(10) NOT NULL,
    Nacionalidad_me varchar(50) NOT NULL,
    FechaNacimiento_me date NOT NULL,
	
    Direccion_me varchar(50) NOT NULL,
    Localidad_me int NOT NULL,
    CorreoElectronico_me varchar(50) NOT NULL,
    Telefono_me varchar(50) NOT NULL,
    Especialidad_me int NOT NULL,
	Estado_me bit NOT NULL default 0,
    CONSTRAINT FK_medico_localidad FOREIGN KEY (Localidad_me) REFERENCES Localidad(ID_loca),
    CONSTRAINT FK_medico_Especialidad FOREIGN KEY (Especialidad_me) REFERENCES Especialidad(ID_esp)
)
GO

CREATE TABLE HorarioAtencion
(
    Legajo_ha int NOT NULL,
    DiaAtencion_ha varchar(20) NOT NULL,
    HorarioAtencion int NOT NULL,
    Estado_ha bit NOT NULL default 1,
    CONSTRAINT PK_HA PRIMARY KEY (Legajo_ha, DiaAtencion_ha, HorarioAtencion)
)
GO

CREATE TABLE Turnos
(
    Legajo_tu int NOT NULL,
    Fecha_tu date NOT NULL,
	DiaAtencion_ha varchar(20) NOT NULL,
    Horario_tu int NOT NULL,
    Asistencia_tu bit default 0 ,
	DniPaciente_tu varchar(10) ,
    Descripcion_tu varchar(300),
	Estado_ha bit NOT NULL default 1,
	CONSTRAINT UQ_Turno UNIQUE(Legajo_tu,Fecha_tu,Horario_tu)
)
GO
create or alter trigger TR_carga_turnos
on HorarioAtencion 
after insert
AS
BEGIN
    DECLARE @Legajo_ha INT;
    DECLARE @DiaAtencion_ha VARCHAR(20);
    DECLARE @HorarioAtencion INT;
    DECLARE @FechaActual DATE;
    DECLARE @DiaSemana INT;

    SELECT @Legajo_ha = Legajo_ha, 
           @DiaAtencion_ha = DiaAtencion_ha, 
           @HorarioAtencion = HorarioAtencion
    FROM inserted;


    SET @DiaSemana = CASE 
                        WHEN @DiaAtencion_ha = 'Lunes' THEN 1
                        WHEN @DiaAtencion_ha = 'Martes' THEN 2
                        WHEN @DiaAtencion_ha = 'Miércoles' THEN 3
                        WHEN @DiaAtencion_ha = 'Jueves' THEN 4
                        WHEN @DiaAtencion_ha = 'Viernes' THEN 5
                        WHEN @DiaAtencion_ha = 'Sábado' THEN 6
                        
                     END;


    SET @FechaActual = GETDATE();

    SET @FechaActual = DATEADD(DAY, (@DiaSemana - DATEPART(WEEKDAY, @FechaActual) + 7) % 7, @FechaActual);

    DECLARE @i INT = 0;
    WHILE @i < 10
    BEGIN
        INSERT INTO Turnos (Legajo_tu, Fecha_tu, DiaAtencion_ha, Horario_tu, Estado_ha)
        VALUES (@Legajo_ha, @FechaActual, @DiaAtencion_ha, @HorarioAtencion, 1);


        SET @FechaActual = DATEADD(WEEK, 1, @FechaActual);
        SET @i = @i + 1;
		select * from inserted
    END;
END

go
CREATE TABLE Usuario
(
    Legajo_us int NOT NULL,
    Usuario_us varchar(50) NOT NULL,
    Contrasenia_us varchar(50) NOT NULL,
    Administrador_us bit NOT NULL,
    Estado_us varchar(10) NOT NULL CHECK (Estado_us IN ('Activo', 'Inactivo')),
    CONSTRAINT PK_usuario PRIMARY KEY (Legajo_us),
    CONSTRAINT FK_usuario_medico FOREIGN KEY (Legajo_us) REFERENCES Medico(Legajo_me),

)
GO

SELECT * FROM TURNOS WHERE Legajo_tu = 10 and Estado_ha = 1 and (DniPaciente_tu IS NOT NULL OR LEN(DniPaciente_tu) != 0)

CREATE OR ALTER PROCEDURE SP_INSERTAR_HORARIO
    @Legajo_med INT,
    @DiaAtencion_ha varchar(20),
	@HorarioAtencion INT
AS
--BEGIN
--    IF EXISTS (SELECT 1 FROM Medico WHERE Legajo_me = @Legajo_med and Estado_me=1)
    BEGIN
	   INSERT INTO HorarioAtencion(Legajo_ha,DiaAtencion_ha,HorarioAtencion)
    VALUES  (@Legajo_med,@DiaAtencion_ha,@HorarioAtencion);

    --END
    --     RAISERROR ('El Medico proporcionado NO existe O esta dado de Baja.', 16, 1);
    --    RETURN;
	END
Go

CREATE PROCEDURE INSERTAR_PACIENTE
    @DNI_pc VARCHAR(10),
    @Nombre_pc VARCHAR(50),
    @Apellido_pc VARCHAR(50),
    @Sexo_pc VARCHAR(10),
    @Nacionalidad_pc VARCHAR(50),
    @FechaNacimiento_pc DATE,
    @Direccion_pc VARCHAR(50),
    @Localidad_pc INT,
    @CorreoElectronico_pc VARCHAR(50),
    @Telefono_pc VARCHAR(50)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Paciente WHERE DNI_pc = @DNI_pc)
    BEGIN
        RAISERROR ('El paciente con el DNI proporcionado ya existe.', 16, 1);
        RETURN;
    END
    INSERT INTO Paciente (DNI_pc, Nombre_pc, Apellido_pc, Sexo_pc, Nacionalidad_pc, FechaNacimiento_pc, Direccion_pc, Localidad_pc,  CorreoElectronico_pc, Telefono_pc)
    VALUES (@DNI_pc, @Nombre_pc, @Apellido_pc, @Sexo_pc, @Nacionalidad_pc, @FechaNacimiento_pc, @Direccion_pc, @Localidad_pc,  @CorreoElectronico_pc, @Telefono_pc);
END
GO

go
CREATE PROCEDURE SP_INSERTAR_Medico
    @DNI_me VARCHAR(10),
    @Nombre_me VARCHAR(50),
    @Apellido_me VARCHAR(50),
    @Sexo_me VARCHAR(10),
    @Nacionalidad_me VARCHAR(50),
    @FechaNacimiento_me DATE,
    @Direccion_me VARCHAR(50),
    @Localidad_me INT,
    @CorreoElectronico_me VARCHAR(50),
    @Telefono_me VARCHAR(50),
	@Especialidad_me INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Medico WHERE DNI_me = @DNI_me)
    BEGIN
        RAISERROR ('El Medico con el DNI proporcionado ya existe.', 16, 1);
        RETURN;
    END
    INSERT INTO Medico(DNI_me,Nombre_me,Apellido_me,Sexo_me,Nacionalidad_me,FechaNacimiento_me,Direccion_me,Localidad_me,CorreoElectronico_me,Telefono_me,Especialidad_me)
    VALUES  (@DNI_me, @Nombre_me, @Apellido_me, @Sexo_me, @Nacionalidad_me,@FechaNacimiento_me, @Direccion_me, @Localidad_me,  @CorreoElectronico_me, @Telefono_me,@Especialidad_me);
END
Go

CREATE OR ALTER PROCEDURE SP_ACTUALIZAR_PACIENTE
    @DNI_pc VARCHAR(50),
    @Nombre_pc VARCHAR(50),
    @Apellido_pc VARCHAR(50),
    @Sexo_pc VARCHAR(50),
    @Nacionalidad_pc VARCHAR(50),
    @FechaNacimiento_pc DATE,
    @Direccion_pc VARCHAR(50),
    @Localidad_pc INT,
    @CorreoElectronico_pc VARCHAR(50),
    @Telefono_pc VARCHAR(50)
AS
BEGIN
 -- Verificar si la localidad existe antes de actualizar
    IF NOT EXISTS (SELECT 1 FROM Localidad WHERE ID_loca = @Localidad_pc)
    BEGIN
        PRINT 'Localidades existentes:'
        SELECT * FROM Localidad
        RAISERROR ('La localidad especificada no existe.', 16, 1);
        RETURN;
    END

    UPDATE Paciente
    SET 
        Nombre_pc = @Nombre_pc,
        Apellido_pc = @Apellido_pc,
        Sexo_pc = @Sexo_pc,
        Nacionalidad_pc = @Nacionalidad_pc,
        FechaNacimiento_pc = @FechaNacimiento_pc,
        Direccion_pc = @Direccion_pc,
        Localidad_pc = @Localidad_pc,
        CorreoElectronico_pc = @CorreoElectronico_pc,
        Telefono_pc = @Telefono_pc
    WHERE DNI_pc = @DNI_pc
END
GO

CREATE  PROCEDURE SP_Alta_Medica
    @Legajo int
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Medico  WHERE Medico.Legajo_me = @Legajo AND Medico.Estado_me = 0)
    BEGIN
        UPDATE Medico SET Estado_me = 1 WHERE Medico.Legajo_me = @Legajo;
    END
END
GO

CREATE or alter PROCEDURE SP_Baja_Medico
    @Legajo int
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Medico  WHERE Medico.Legajo_me = @Legajo AND Medico.Estado_me = 1)
    BEGIN
        UPDATE Medico SET Estado_me = 0 WHERE Medico.Legajo_me = @Legajo;
    END
END
GO


CREATE PROCEDURE SP_ELIMINAR_PACIENTE
    @DNI_pc VARCHAR(10)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Paciente p WHERE p.DNI_pc = @DNI_pc AND p.Estado_pc = 1)
    BEGIN
        UPDATE Paciente SET Estado_pc = 0 WHERE DNI_pc = @DNI_pc;
    END
END
GO

CREATE PROCEDURE SP_Actualizar_Medico
    @Legajo_me int,
    @DNI_me varchar(10),
    @Nombre_me varchar(50),
    @Apellido_me varchar(50),
    @Sexo_me varchar(10),
    @Nacionalidad_me varchar(50),
    @FechaNacimiento_me date,
    @Direccion_me varchar(50),
    @Localidad_me int,
    @CorreoElectronico_me varchar(50),
    @Telefono_me varchar(50),
    @Especialidad_me int
AS
BEGIN
    UPDATE Medico
    SET 
        DNI_me = @DNI_me,
        Nombre_me = @Nombre_me,
        Apellido_me = @Apellido_me,
        Sexo_me = @Sexo_me,
        Nacionalidad_me = @Nacionalidad_me,
        FechaNacimiento_me = @FechaNacimiento_me,
        Direccion_me = @Direccion_me,
        Localidad_me = @Localidad_me,
        CorreoElectronico_me = @CorreoElectronico_me,
        Telefono_me = @Telefono_me,
        Especialidad_me = @Especialidad_me
    WHERE Legajo_me = @Legajo_me
END
GO

CREATE or alter PROCEDURE TraerPacientePorDNI
    @DNI_pc INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        P.DNI_pc, 
        P.Nombre_pc, 
        P.Apellido_pc, 
        P.Sexo_pc, 
        P.Nacionalidad_pc, 
        P.FechaNacimiento_pc, 
        P.Direccion_pc, 
        Provincia.ID_prov, 
        L.ID_loca,
		P.CorreoElectronico_pc, 
        P.Telefono_pc 
    FROM 
        Paciente P 
    INNER JOIN 
        Localidad L ON P.Localidad_pc = L.ID_loca 
    INNER JOIN 
        Provincia ON L.IDProv_loca = Provincia.ID_prov
    WHERE 
        P.DNI_pc = @DNI_pc;
END
go

CREATE OR ALTER PROCEDURE TraerMedicoSegunDNI
    @DNI_me VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        M.Legajo_me, 
        M.DNI_me, 
        M.Nombre_me, 
        M.Apellido_me, 
        M.Sexo_me, 
        M.Nacionalidad_me, 
        M.FechaNacimiento_me, 
        M.Direccion_me, 
        M.Localidad_me, 
        M.CorreoElectronico_me, 
        M.Telefono_me,
        M.Especialidad_me
    FROM 
        Medico M
    WHERE 
        M.DNI_me = @DNI_me;
END
-- FIN SPs




INSERT INTO Provincia (Nombre_prov)
VALUES 
('Buenos Aires'),
('Córdoba'),
('Santa Fe');

-- Insertar datos en la tabla Localidad
INSERT INTO Localidad (IDProv_loca, Nombre_loca)
VALUES 
(1, 'La Plata'),
(1, 'Mar del Plata'),
(2, 'Córdoba'),
(2, 'Villa Carlos Paz'),
(3, 'Rosario'),
(3, 'Santa Fe');

-- Insertar datos en la tabla Especialidad
INSERT INTO Especialidad (Nombre_esp)
VALUES 
('Cardiología'),
('Pediatría'),
('Neurología'),
('Dermatología');


-- Insertar datos en la tabla Paciente
INSERT INTO Paciente (DNI_pc, Nombre_pc, Apellido_pc, Sexo_pc, Nacionalidad_pc, FechaNacimiento_pc, Direccion_pc, Localidad_pc, CorreoElectronico_pc, Telefono_pc)
VALUES 
('12345678', 'Juan', 'Pérez', 'Masculino', 'Argentino', '1980-01-15', 'Calle Falsa 123', 1, 'juan.perez@example.com', '1234567890'),
('87654321', 'María', 'García', 'Femenino', 'Argentino', '1990-05-20', 'Av. Siempre Viva 456', 3,  'maria.garcia@example.com', '0987654321');

-- Insertar datos en la tabla Medico
INSERT INTO Medico (DNI_me, Nombre_me, Apellido_me, Sexo_me, Nacionalidad_me, FechaNacimiento_me, Direccion_me, Localidad_me, CorreoElectronico_me, Telefono_me, Especialidad_me)
VALUES 
('11223344', 'Carlos', 'Fernández', 'Masculino', 'Argentino', '1975-08-30', 'Calle Salud 789', 2,  'carlos.fernandez@example.com', '1122334455', 1),
('55667788', 'Ana', 'Martínez', 'Femenino', 'Argentino', '1985-02-15', 'Av. Bienestar 101', 4,  'ana.martinez@example.com', '5566778899', 2);

INSERT INTO Usuario (Legajo_us, Usuario_us, Contrasenia_us, Administrador_us, Estado_us)
VALUES 
(10, 'cfernandez', 'password123', 1, 'Activo'),
(11, 'amartinez', 'password456', 0, 'Activo');

INSERT INTO Turnos (Legajo_tu, Fecha_tu, DiaAtencion_ha, Horario_tu, Asistencia_tu, DniPaciente_tu, Descripcion_tu, Estado_ha)
VALUES 
(10, '2024-07-01', 'Lunes', 9, 0, '12345678', 'Consulta general', 1),
(10, '2024-07-08', 'Lunes', 9, 0, '87654321', 'Chequeo de rutina', 1),
(11, '2024-07-02', 'Martes', 14, 0, '12345678', 'Consulta especializada', 1),
(11, '2024-07-09', 'Martes', 14, 0, '87654321', 'Consulta de seguimiento', 1),
(11, '2024-07-10', 'Miércoles', 10, 0, '87654321', 'Consulta de seguimiento', 1);
GO

SELECT * FROM Turnos
-- Insertar datos en la tabla HorarioAtencion
--INSERT INTO HorarioAtencion (Legajo_ha, DiaAtencion_ha, HorarioAtencion)
--VALUES 
--(10000, 'Lunes', 9),
--(10000, 'Martes', 14),
--(10001, 'Miércoles', 10),
--(10001, 'Jueves', 15);
