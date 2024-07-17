USE BDClinica;
GO
CREATE OR ALTER PROCEDURE SP_INSERTAR_HORARIO
    @Legajo_med INT,
    @DiaAtencion_ha varchar(20),
	@HorarioAtencion INT
AS

    BEGIN
	   INSERT INTO HorarioAtencion(Legajo_ha,DiaAtencion_ha,HorarioAtencion)
    VALUES  (@Legajo_med,@DiaAtencion_ha,@HorarioAtencion);

	END
Go

CREATE OR ALTER PROCEDURE INSERTAR_PACIENTE
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
CREATE OR ALTER PROCEDURE SP_INSERTAR_Medico
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

CREATE or ALTER PROCEDURE ACTUALIZAR_PACIENTE
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

CREATE OR ALTER PROCEDURE SP_Alta_Medica
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


CREATE OR ALTER PROCEDURE SP_ELIMINAR_PACIENTE
    @DNI_pc VARCHAR(10)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Paciente p WHERE p.DNI_pc = @DNI_pc AND p.Estado_pc = 1)
    BEGIN
        UPDATE Paciente SET Estado_pc = 0 WHERE DNI_pc = @DNI_pc;
    END
END
GO

CREATE OR ALTER PROCEDURE SP_Actualizar_Medico
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
GO

CREATE OR ALTER PROCEDURE sp_ActualizarTurnoDniPaciente
    @Legajo_tu INT,
    @Fecha_tu DATE,
    @Horario_tu INT,
    @DniPaciente_tu VARCHAR(10)
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        UPDATE Turnos
        SET DniPaciente_tu = @DniPaciente_tu
        WHERE Legajo_tu = @Legajo_tu AND Fecha_tu = @Fecha_tu AND Horario_tu = @Horario_tu;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END;
GO

CREATE OR ALTER PROCEDURE SP_ActualizarUsuario
    @Legajo_us INT,
    @NuevoUsuario_us VARCHAR(50),
    @NuevaContrasenia_us VARCHAR(50)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Usuario WHERE Legajo_us = @Legajo_us)
    BEGIN
        UPDATE Usuario
        SET Contrasenia_us = @NuevaContrasenia_us
        WHERE Legajo_us = @Legajo_us;

        IF EXISTS (SELECT 1 FROM Usuario WHERE Legajo_us = @Legajo_us AND Usuario_us != @NuevoUsuario_us)
        BEGIN
            UPDATE Usuario
            SET Usuario_us = @NuevoUsuario_us
            WHERE Legajo_us = @Legajo_us;
        END
    END
END
GO
CREATE OR ALTER PROCEDURE SP_ObtenerLegajoPorUsuario
    @Usuario_us VARCHAR(50)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Usuario WHERE Usuario_us = @Usuario_us)
    BEGIN
        SELECT Legajo_us
        FROM Usuario
        WHERE Usuario_us = @Usuario_us;
    END
END
GO

-- SP para reportes:

-- Medicos:

CREATE OR ALTER PROCEDURE SP_MedicoConMasAtenciones
AS
BEGIN
   IF EXISTS (SELECT 1 FROM Turnos)
    BEGIN
        SELECT TOP 1 
            M.Legajo_me,
			M.DNI_me,
            M.Nombre_me,
            M.Apellido_me,
            COUNT(T.Legajo_tu) cant_atenciones
        FROM 
            Turnos T
        INNER JOIN 
            Medico M ON T.Legajo_tu = M.Legajo_me
        GROUP BY 
            M.Legajo_me, M.DNI_me, M.Nombre_me, M.Apellido_me
        ORDER BY 
            cant_atenciones DESC;
    END
END
GO


CREATE OR ALTER PROCEDURE SP_MedicoEspecialidadQueMasSeUso
AS
BEGIN
	SELECT TOP 1
		e.Nombre_esp,
		COUNT(e.Nombre_esp) AS cantidad
	FROM
		Especialidad e
	INNER JOIN
		Medico m ON m.Especialidad_me = e.ID_esp
	INNER JOIN
		Turnos t ON t.Legajo_tu = m.Legajo_me
	GROUP BY
		e.Nombre_esp
	ORDER BY
		cantidad DESC;
END
GO

CREATE OR ALTER PROCEDURE SP_MedicoMesConMayorConcurrenciaPorEspecialidad
AS
BEGIN
	SELECT
		e.Nombre_esp, MONTH(t.Fecha_tu) mes
	FROM
		Turnos t
	INNER JOIN
		Medico m ON t.Legajo_tu = m.Legajo_me
	INNER JOIN
		Especialidad e ON m.Especialidad_me = e.ID_esp
	GROUP BY
		e.Nombre_esp, MONTH(t.Fecha_tu)
END
GO

-- Pacientes:
CREATE OR ALTER PROCEDURE SP_PacienteConMasTurnosCancelados
AS
BEGIN
    DECLARE @FechaActual DATE = GETDATE();

    SELECT TOP 1 
        P.DNI_pc,
        P.Nombre_pc,
        P.Apellido_pc,
        COUNT(T.DniPaciente_tu) AS TurnosCancelados
    FROM 
        Turnos T
    INNER JOIN 
        Paciente P ON T.DniPaciente_tu = P.DNI_pc
    WHERE 
        T.Fecha_tu < @FechaActual AND T.Asistencia_tu = 0
    GROUP BY 
        P.DNI_pc, P.Nombre_pc, P.Apellido_pc
    ORDER BY 
        TurnosCancelados DESC;
END
GO

CREATE OR ALTER PROCEDURE SP_PacienteLocalidadConMasPacientes
AS
BEGIN
	SELECT TOP 1
		l.Nombre_loca,
		COUNT(l.ID_loca) cantidad
	FROM
		Localidad l
	INNER JOIN
		Paciente p ON p.Localidad_pc = l.ID_loca
	GROUP BY
		l.Nombre_loca
	ORDER BY
		cantidad DESC
END
GO
CREATE OR ALTER PROCEDURE ACTUALIZAR_ESTADO_TURNO
    @Asistencia bit,
    @Fecha date,
    @Estado bit
AS
BEGIN
    UPDATE Turnos
    SET
        Asistencia_tu = @Asistencia,
        Estado_ha = @Estado
    WHERE Fecha_tu = @Fecha;
END
