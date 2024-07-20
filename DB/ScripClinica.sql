USE [master]
GO
/****** Object:  Database [BDClinica]    Script Date: 20/07/2024 19:40:50 ******/
CREATE DATABASE [BDClinica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDClinica', FILENAME = N'C:\BASES\BDClinica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDClinica_log', FILENAME = N'C:\BASES\BDClinica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDClinica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDClinica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDClinica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDClinica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDClinica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDClinica] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDClinica] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BDClinica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDClinica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDClinica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDClinica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDClinica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDClinica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDClinica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDClinica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDClinica] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDClinica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDClinica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDClinica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDClinica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDClinica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDClinica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDClinica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDClinica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDClinica] SET  MULTI_USER 
GO
ALTER DATABASE [BDClinica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDClinica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDClinica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDClinica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDClinica] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BDClinica]
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[ID_esp] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_esp] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_esp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioAtencion]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioAtencion](
	[Legajo_ha] [int] NOT NULL,
	[DiaAtencion_ha] [varchar](20) NOT NULL,
	[HorarioAtencion] [int] NOT NULL,
	[Estado_ha] [bit] NOT NULL,
 CONSTRAINT [PK_HA] PRIMARY KEY CLUSTERED 
(
	[Legajo_ha] ASC,
	[DiaAtencion_ha] ASC,
	[HorarioAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[ID_loca] [int] IDENTITY(1,1) NOT NULL,
	[IDProv_loca] [int] NOT NULL,
	[Nombre_loca] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_loca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[Legajo_me] [int] IDENTITY(10,1) NOT NULL,
	[DNI_me] [varchar](10) NOT NULL,
	[Nombre_me] [varchar](50) NOT NULL,
	[Apellido_me] [varchar](50) NOT NULL,
	[Sexo_me] [varchar](10) NOT NULL,
	[Nacionalidad_me] [varchar](50) NOT NULL,
	[FechaNacimiento_me] [date] NOT NULL,
	[Direccion_me] [varchar](50) NOT NULL,
	[Localidad_me] [int] NOT NULL,
	[CorreoElectronico_me] [varchar](50) NOT NULL,
	[Telefono_me] [varchar](50) NOT NULL,
	[Especialidad_me] [int] NOT NULL,
	[Estado_me] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Legajo_me] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[DNI_pc] [varchar](10) NOT NULL,
	[Nombre_pc] [varchar](50) NOT NULL,
	[Apellido_pc] [varchar](50) NOT NULL,
	[Sexo_pc] [varchar](10) NOT NULL,
	[Nacionalidad_pc] [varchar](50) NOT NULL,
	[FechaNacimiento_pc] [date] NOT NULL,
	[Direccion_pc] [varchar](50) NOT NULL,
	[Localidad_pc] [int] NOT NULL,
	[CorreoElectronico_pc] [varchar](50) NOT NULL,
	[Telefono_pc] [varchar](50) NOT NULL,
	[Estado_pc] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DNI_pc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[ID_prov] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_prov] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_prov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turnos]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turnos](
	[Legajo_tu] [int] NOT NULL,
	[Fecha_tu] [date] NOT NULL,
	[DiaAtencion_ha] [varchar](20) NOT NULL,
	[Horario_tu] [int] NOT NULL,
	[Asistencia_tu] [bit] NULL,
	[DniPaciente_tu] [varchar](10) NULL,
	[Descripcion_tu] [varchar](300) NULL,
	[Estado_ha] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Legajo_us] [int] NOT NULL,
	[Usuario_us] [varchar](50) NOT NULL,
	[Contrasenia_us] [varchar](50) NOT NULL,
	[Administrador_us] [bit] NOT NULL,
	[Estado_us] [varchar](10) NOT NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[Legajo_us] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Especialidad] ON 

INSERT [dbo].[Especialidad] ([ID_esp], [Nombre_esp]) VALUES (1, N'Cardiología')
INSERT [dbo].[Especialidad] ([ID_esp], [Nombre_esp]) VALUES (2, N'Pediatría')
INSERT [dbo].[Especialidad] ([ID_esp], [Nombre_esp]) VALUES (3, N'Neurología')
INSERT [dbo].[Especialidad] ([ID_esp], [Nombre_esp]) VALUES (4, N'Dermatología')
SET IDENTITY_INSERT [dbo].[Especialidad] OFF
GO
INSERT [dbo].[HorarioAtencion] ([Legajo_ha], [DiaAtencion_ha], [HorarioAtencion], [Estado_ha]) VALUES (10, N'LUNES', 14, 1)
INSERT [dbo].[HorarioAtencion] ([Legajo_ha], [DiaAtencion_ha], [HorarioAtencion], [Estado_ha]) VALUES (11, N'MARTES', 12, 1)
GO
SET IDENTITY_INSERT [dbo].[Localidad] ON 

INSERT [dbo].[Localidad] ([ID_loca], [IDProv_loca], [Nombre_loca]) VALUES (1, 1, N'La Plata')
INSERT [dbo].[Localidad] ([ID_loca], [IDProv_loca], [Nombre_loca]) VALUES (2, 1, N'Mar del Plata')
INSERT [dbo].[Localidad] ([ID_loca], [IDProv_loca], [Nombre_loca]) VALUES (3, 2, N'Córdoba')
INSERT [dbo].[Localidad] ([ID_loca], [IDProv_loca], [Nombre_loca]) VALUES (4, 2, N'Villa Carlos Paz')
INSERT [dbo].[Localidad] ([ID_loca], [IDProv_loca], [Nombre_loca]) VALUES (5, 3, N'Rosario')
INSERT [dbo].[Localidad] ([ID_loca], [IDProv_loca], [Nombre_loca]) VALUES (6, 3, N'Santa Fe')
SET IDENTITY_INSERT [dbo].[Localidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Medico] ON 

INSERT [dbo].[Medico] ([Legajo_me], [DNI_me], [Nombre_me], [Apellido_me], [Sexo_me], [Nacionalidad_me], [FechaNacimiento_me], [Direccion_me], [Localidad_me], [CorreoElectronico_me], [Telefono_me], [Especialidad_me], [Estado_me]) VALUES (10, N'11223344', N'Carlos', N'Fernández', N'Masculino', N'Argentino', CAST(N'1975-08-30' AS Date), N'carlos.fernandez@example.com', 1, N'carlos.fernandez@example.com', N'1122334455', 2, 1)
INSERT [dbo].[Medico] ([Legajo_me], [DNI_me], [Nombre_me], [Apellido_me], [Sexo_me], [Nacionalidad_me], [FechaNacimiento_me], [Direccion_me], [Localidad_me], [CorreoElectronico_me], [Telefono_me], [Especialidad_me], [Estado_me]) VALUES (11, N'55667788', N'Ana', N'Martínez', N'Femenino', N'Argentino', CAST(N'1985-02-15' AS Date), N'Av. Bienestar 101', 4, N'ana.martinez@example.com', N'5566778899', 2, 1)
SET IDENTITY_INSERT [dbo].[Medico] OFF
GO
INSERT [dbo].[Paciente] ([DNI_pc], [Nombre_pc], [Apellido_pc], [Sexo_pc], [Nacionalidad_pc], [FechaNacimiento_pc], [Direccion_pc], [Localidad_pc], [CorreoElectronico_pc], [Telefono_pc], [Estado_pc]) VALUES (N'12345678', N'pepe', N'Pérez', N'Masculino', N'Argentino', CAST(N'1980-01-15' AS Date), N'Calle Falsa 123', 1, N'juan.perez@example.com', N'1234567890', 1)
INSERT [dbo].[Paciente] ([DNI_pc], [Nombre_pc], [Apellido_pc], [Sexo_pc], [Nacionalidad_pc], [FechaNacimiento_pc], [Direccion_pc], [Localidad_pc], [CorreoElectronico_pc], [Telefono_pc], [Estado_pc]) VALUES (N'87654321', N'María', N'García', N'Femenino', N'Argentino', CAST(N'1990-05-20' AS Date), N'Av. Siempre Viva 456', 3, N'maria.garcia@example.com', N'0987654321', 1)
GO
SET IDENTITY_INSERT [dbo].[Provincia] ON 

INSERT [dbo].[Provincia] ([ID_prov], [Nombre_prov]) VALUES (1, N'Buenos Aires')
INSERT [dbo].[Provincia] ([ID_prov], [Nombre_prov]) VALUES (2, N'Córdoba')
INSERT [dbo].[Provincia] ([ID_prov], [Nombre_prov]) VALUES (3, N'Santa Fe')
SET IDENTITY_INSERT [dbo].[Provincia] OFF
GO
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (10, CAST(N'2024-07-01' AS Date), N'Lunes', 9, 0, N'12345678', N'Consulta general', 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (10, CAST(N'2024-07-08' AS Date), N'Lunes', 9, 1, N'87654321', N'Chequeo de rutina', 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-07-02' AS Date), N'Martes', 14, 0, N'12345678', N'Consulta especializada', 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-07-09' AS Date), N'Martes', 14, 0, N'87654321', N'Consulta de seguimiento', 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-07-10' AS Date), N'Miércoles', 10, 0, N'87654321', N'Consulta de seguimiento', 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-07-23' AS Date), N'MARTES', 12, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-07-30' AS Date), N'MARTES', 12, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-08-06' AS Date), N'MARTES', 12, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (10, CAST(N'2024-07-22' AS Date), N'LUNES', 14, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (10, CAST(N'2024-07-29' AS Date), N'LUNES', 14, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (10, CAST(N'2024-08-05' AS Date), N'LUNES', 14, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (10, CAST(N'2024-08-12' AS Date), N'LUNES', 14, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (10, CAST(N'2024-08-19' AS Date), N'LUNES', 14, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (10, CAST(N'2024-08-26' AS Date), N'LUNES', 14, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (10, CAST(N'2024-09-02' AS Date), N'LUNES', 14, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (10, CAST(N'2024-09-09' AS Date), N'LUNES', 14, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (10, CAST(N'2024-09-16' AS Date), N'LUNES', 14, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (10, CAST(N'2024-09-23' AS Date), N'LUNES', 14, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-08-13' AS Date), N'MARTES', 12, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-08-20' AS Date), N'MARTES', 12, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-08-27' AS Date), N'MARTES', 12, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-09-03' AS Date), N'MARTES', 12, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-09-10' AS Date), N'MARTES', 12, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-09-17' AS Date), N'MARTES', 12, 0, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES (11, CAST(N'2024-09-24' AS Date), N'MARTES', 12, 0, NULL, NULL, 1)
GO
INSERT [dbo].[Usuario] ([Legajo_us], [Usuario_us], [Contrasenia_us], [Administrador_us], [Estado_us]) VALUES (10, N'tomi', N'123', 1, N'Activo')
INSERT [dbo].[Usuario] ([Legajo_us], [Usuario_us], [Contrasenia_us], [Administrador_us], [Estado_us]) VALUES (11, N'amartinez', N'password456', 0, N'Activo')
GO
/****** Object:  Index [UQ_Turno]    Script Date: 20/07/2024 19:40:50 ******/
ALTER TABLE [dbo].[Turnos] ADD  CONSTRAINT [UQ_Turno] UNIQUE NONCLUSTERED 
(
	[Legajo_tu] ASC,
	[Fecha_tu] ASC,
	[Horario_tu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HorarioAtencion] ADD  DEFAULT ((1)) FOR [Estado_ha]
GO
ALTER TABLE [dbo].[Medico] ADD  DEFAULT ((0)) FOR [Estado_me]
GO
ALTER TABLE [dbo].[Paciente] ADD  DEFAULT ((1)) FOR [Estado_pc]
GO
ALTER TABLE [dbo].[Turnos] ADD  DEFAULT ((0)) FOR [Asistencia_tu]
GO
ALTER TABLE [dbo].[Turnos] ADD  DEFAULT ((1)) FOR [Estado_ha]
GO
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_localidad_provincia] FOREIGN KEY([IDProv_loca])
REFERENCES [dbo].[Provincia] ([ID_prov])
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_localidad_provincia]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_medico_Especialidad] FOREIGN KEY([Especialidad_me])
REFERENCES [dbo].[Especialidad] ([ID_esp])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_medico_Especialidad]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_medico_localidad] FOREIGN KEY([Localidad_me])
REFERENCES [dbo].[Localidad] ([ID_loca])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_medico_localidad]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_paciente_localidad] FOREIGN KEY([Localidad_pc])
REFERENCES [dbo].[Localidad] ([ID_loca])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_paciente_localidad]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_medico] FOREIGN KEY([Legajo_us])
REFERENCES [dbo].[Medico] ([Legajo_me])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_usuario_medico]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD CHECK  (([Estado_us]='Inactivo' OR [Estado_us]='Activo'))
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_ESTADO_TURNO]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[ACTUALIZAR_ESTADO_TURNO]
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
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_PACIENTE]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[ACTUALIZAR_PACIENTE]
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
/****** Object:  StoredProcedure [dbo].[INSERTAR_PACIENTE]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[INSERTAR_PACIENTE]
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
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Medico]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_Actualizar_Medico]
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
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_PACIENTE]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_ACTUALIZAR_PACIENTE]
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
/****** Object:  StoredProcedure [dbo].[sp_ActualizarTurnoDniPaciente]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[sp_ActualizarTurnoDniPaciente]
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
/****** Object:  StoredProcedure [dbo].[SP_ActualizarUsuario]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_ActualizarUsuario]
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
/****** Object:  StoredProcedure [dbo].[SP_Alta_Medica]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_Alta_Medica]
    @Legajo int
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Medico  WHERE Medico.Legajo_me = @Legajo AND Medico.Estado_me = 0)
    BEGIN
        UPDATE Medico SET Estado_me = 1 WHERE Medico.Legajo_me = @Legajo;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Baja_Medico]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_Baja_Medico]
    @Legajo int
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Medico  WHERE Medico.Legajo_me = @Legajo AND Medico.Estado_me = 1)
    BEGIN
        UPDATE Medico SET Estado_me = 0 WHERE Medico.Legajo_me = @Legajo;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_PACIENTE]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[SP_ELIMINAR_PACIENTE]
    @DNI_pc VARCHAR(10)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Paciente p WHERE p.DNI_pc = @DNI_pc AND p.Estado_pc = 1)
    BEGIN
        UPDATE Paciente SET Estado_pc = 0 WHERE DNI_pc = @DNI_pc;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_HORARIO]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_INSERTAR_HORARIO]
    @Legajo_med INT,
    @DiaAtencion_ha varchar(20),
	@HorarioAtencion INT
AS

    BEGIN
	   INSERT INTO HorarioAtencion(Legajo_ha,DiaAtencion_ha,HorarioAtencion)
    VALUES  (@Legajo_med,@DiaAtencion_ha,@HorarioAtencion);

	END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_Medico]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_INSERTAR_Medico]
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
GO
/****** Object:  StoredProcedure [dbo].[SP_MedicoConMasAtenciones]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- SP para reportes:

-- Medicos:

CREATE   PROCEDURE [dbo].[SP_MedicoConMasAtenciones]
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
/****** Object:  StoredProcedure [dbo].[SP_MedicoEspecialidadQueMasSeUso]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[SP_MedicoEspecialidadQueMasSeUso]
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
/****** Object:  StoredProcedure [dbo].[SP_MedicoMesConMayorConcurrenciaPorEspecialidad]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_MedicoMesConMayorConcurrenciaPorEspecialidad]
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
/****** Object:  StoredProcedure [dbo].[SP_ObtenerLegajoPorUsuario]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_ObtenerLegajoPorUsuario]
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
/****** Object:  StoredProcedure [dbo].[SP_PacienteConMasTurnosCancelados]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Pacientes:
CREATE   PROCEDURE [dbo].[SP_PacienteConMasTurnosCancelados]
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
/****** Object:  StoredProcedure [dbo].[SP_PacienteLocalidadConMasPacientes]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_PacienteLocalidadConMasPacientes]
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
/****** Object:  StoredProcedure [dbo].[TraerMedicoSegunDNI]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[TraerMedicoSegunDNI]
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
/****** Object:  StoredProcedure [dbo].[TraerPacientePorDNI]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[TraerPacientePorDNI]
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
GO
/****** Object:  Trigger [dbo].[TR_carga_turnos]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   trigger [dbo].[TR_carga_turnos]
on [dbo].[HorarioAtencion] 
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

GO
ALTER TABLE [dbo].[HorarioAtencion] ENABLE TRIGGER [TR_carga_turnos]
GO
/****** Object:  Trigger [dbo].[TRG_UpdateHorarioAtencion]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Actualizar los turnos relacionados cuando el estado de HorarioAtencion cambia
CREATE TRIGGER [dbo].[TRG_UpdateHorarioAtencion]
ON [dbo].[HorarioAtencion]
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
ALTER TABLE [dbo].[HorarioAtencion] ENABLE TRIGGER [TRG_UpdateHorarioAtencion]
GO
/****** Object:  Trigger [dbo].[TRG_AfterInsert_Medico]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[TRG_AfterInsert_Medico]
ON [dbo].[Medico]
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
ALTER TABLE [dbo].[Medico] ENABLE TRIGGER [TRG_AfterInsert_Medico]
GO
/****** Object:  Trigger [dbo].[TRG_AfterUpdate_Medico]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--crea el ususrio y da de baja o alta si es q este cambia--
CREATE TRIGGER [dbo].[TRG_AfterUpdate_Medico]
ON [dbo].[Medico]
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
ALTER TABLE [dbo].[Medico] ENABLE TRIGGER [TRG_AfterUpdate_Medico]
GO
/****** Object:  Trigger [dbo].[trg_UpdateMedico]    Script Date: 20/07/2024 19:40:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Actualizar los horarios relacionados cuando el estado del médico cambia
CREATE TRIGGER [dbo].[trg_UpdateMedico]
ON [dbo].[Medico]
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
ALTER TABLE [dbo].[Medico] ENABLE TRIGGER [trg_UpdateMedico]
GO
USE [master]
GO
ALTER DATABASE [BDClinica] SET  READ_WRITE 
GO
