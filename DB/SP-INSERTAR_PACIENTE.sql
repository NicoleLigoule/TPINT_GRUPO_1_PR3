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
    INSERT INTO Paciente (DNI_pc, Nombre_pc, Apellido_pc, Sexo_pc, Nacionalidad_pc, FechaNacimiento_pc, Direccion_pc, Localidad_pc, CorreoElectronico_pc, Telefono_pc)
    VALUES (@DNI_pc, @Nombre_pc, @Apellido_pc, @Sexo_pc, @Nacionalidad_pc, @FechaNacimiento_pc, @Direccion_pc, @Localidad_pc, @CorreoElectronico_pc, @Telefono_pc);
END




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


CREATE OR ALTER PROCEDURE SP_INSERTAR_Horario_Atencion
    @Legajo_med INT,
    @DiaAtencion_ha varchar(20),
	@HorarioAtencion INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Medico WHERE Legajo_me = @Legajo_med and Estado_me=1)
    BEGIN
	   INSERT INTO HorarioAtencion(Legajo_ha,DiaAtencion_ha,HorarioAtencion)
    VALUES  (@Legajo_med,@DiaAtencion_ha,@HorarioAtencion);

    END
         RAISERROR ('El Medico proporcionado NO existe O esta dado de Baja.', 16, 1);
        RETURN;
	END
Go