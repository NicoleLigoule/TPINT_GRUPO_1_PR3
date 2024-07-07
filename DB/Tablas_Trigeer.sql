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
    CONSTRAINT PK_HA PRIMARY KEY (Legajo_ha, DiaAtencion_ha, HorarioAtencion),
	Constraint FK_Legajo_Med FOREIGN KEY (Legajo_ha) REFERENCES Medico(Legajo_me)
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
	CONSTRAINT UQ_Turno UNIQUE(Legajo_tu,Fecha_tu,Horario_tu),
	Constraint FK_Legajo_Med_Tur FOREIGN KEY (Legajo_tu) REFERENCES Medico(Legajo_me),
	Constraint FK_DNIPac_Tur FOREIGN KEY (DniPaciente_tu) REFERENCES Paciente(DNI_pc)
)
GO
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
		
    END;
END

go

-- Actualizar los turnos relacionados cuando el estado de HorarioAtencion cambia
CREATE TRIGGER TRG_UpdateHorarioAtencion
ON HorarioAtencion
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    
    UPDATE t
    SET t.Estado_ha = i.Estado_ha
    FROM Turnos t
    INNER JOIN inserted i ON t.Legajo_tu = i.Legajo_ha AND t.DiaAtencion_ha = i.DiaAtencion_ha AND t.Horario_tu = i.HorarioAtencion
    WHERE t.Fecha_tu > GETDATE(); -- Solo afectar los turnos posteriores a la fecha actual
END
GO
-- Actualizar los horarios relacionados cuando el estado del médico cambia
CREATE TRIGGER trg_UpdateMedico
ON Medico
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    
    UPDATE ha
    SET ha.Estado_ha = i.Estado_me
    FROM HorarioAtencion ha
    INNER JOIN inserted i ON ha.Legajo_ha = i.Legajo_me;
END
GO

CREATE TRIGGER TRG_AfterInsert_Medico
ON Medico
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Usuario (Legajo_us, Usuario_us, Contrasenia_us, Administrador_us, Estado_us)
    SELECT 
        i.Legajo_me,
        i.Nombre_me,
        CONCAT(i.DNI_me, '.med'),
        0,
        'Activo'
    FROM 
        inserted i
    WHERE
        i.Estado_me = 1 
END
GO
--crea el ususrio y da de baja o alta si es q este cambia--
CREATE TRIGGER TRG_AfterUpdate_Medico
ON Medico
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @CountMedicos INT;

    SELECT @CountMedicos = COUNT(*)
    FROM inserted i
    INNER JOIN deleted d ON i.Legajo_me = d.Legajo_me
    WHERE i.Estado_me = 1 AND d.Estado_me = 0;


    IF @CountMedicos > 0
    BEGIN
        INSERT INTO Usuario (Legajo_us, Usuario_us, Contrasenia_us, Administrador_us, Estado_us)
        SELECT 
            i.Legajo_me,
            i.Nombre_me,
            CONCAT(i.DNI_me, '.med'),
            0, 
            'Activo' 
        FROM 
            inserted i
        WHERE
            NOT EXISTS (
                SELECT 1 FROM Usuario WHERE Legajo_us = i.Legajo_me
            );

        UPDATE u
        SET 
            Estado_us = CASE WHEN i.Estado_me = 1 THEN 'Activo' ELSE 'Inactivo' END
        FROM 
            Usuario u
        INNER JOIN inserted i ON u.Legajo_us = i.Legajo_me;
    END
    ELSE
    BEGIN
        UPDATE u
        SET 
            Estado_us = CASE WHEN i.Estado_me = 1 THEN 'Activo' ELSE 'Inactivo' END
        FROM 
            Usuario u
        INNER JOIN inserted i ON u.Legajo_us = i.Legajo_me;
    END
END
GO