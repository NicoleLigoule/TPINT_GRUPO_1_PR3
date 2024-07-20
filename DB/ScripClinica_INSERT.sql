USE [BDClinica]
GO

SET IDENTITY_INSERT [dbo].[Medico] ON

INSERT INTO [dbo].[Medico] ([Legajo_me], [DNI_me], [Nombre_me], [Apellido_me], [Sexo_me], [Nacionalidad_me], [FechaNacimiento_me], [Direccion_me], [Localidad_me], [CorreoElectronico_me], [Telefono_me], [Especialidad_me], [Estado_me])
VALUES 
(12, N'66778899', N'Lucía', N'Gómez', N'Femenino', N'Argentino', CAST(N'1982-03-15' AS Date), N'Calle 1', 1, N'lucia.gomez@example.com', N'6677889900', 1, 1),
(13, N'99887766', N'Roberto', N'Pérez', N'Masculino', N'Argentino', CAST(N'1978-05-20' AS Date), N'Calle 2', 2, N'roberto.perez@example.com', N'9988776655', 2, 1),
(14, N'55667788', N'María', N'Rodríguez', N'Femenino', N'Argentino', CAST(N'1985-08-25' AS Date), N'Calle 3', 3, N'maria.rodriguez@example.com', N'5566778844', 3, 1),
(15, N'44332211', N'Carlos', N'Sánchez', N'Masculino', N'Argentino', CAST(N'1980-07-10' AS Date), N'Calle 4', 4, N'carlos.sanchez@example.com', N'4433221199', 4, 1),
(16, N'22334455', N'Laura', N'García', N'Femenino', N'Argentino', CAST(N'1983-12-05' AS Date), N'Calle 5', 5, N'laura.garcia@example.com', N'2233445566', 3, 1),
(17, N'11223344', N'Juan', N'Martínez', N'Masculino', N'Argentino', CAST(N'1975-01-30' AS Date), N'Calle 6', 6, N'juan.martinez@example.com', N'1122334477', 2, 1),
(18, N'33445566', N'Valeria', N'Fernández', N'Femenino', N'Argentino', CAST(N'1987-11-15' AS Date), N'Calle 7', 1, N'valeria.fernandez@example.com', N'3344556688', 2, 1),
(19, N'77889900', N'Andrés', N'González', N'Masculino', N'Argentino', CAST(N'1981-04-22' AS Date), N'Calle 8', 2, N'andres.gonzalez@example.com', N'7788990011', 3, 1),
(20, N'66778811', N'Sofía', N'López', N'Femenino', N'Argentino', CAST(N'1990-02-18' AS Date), N'Calle 9', 3, N'sofia.lopez@example.com', N'6677881122', 4, 1),
(21, N'11224488', N'Martín', N'Hernández', N'Masculino', N'Argentino', CAST(N'1977-06-05' AS Date), N'Calle 10', 4, N'martin.hernandez@example.com', N'1122448899', 1, 1),
(22, N'99882233', N'Clara', N'Jiménez', N'Femenino', N'Argentino', CAST(N'1989-09-25' AS Date), N'Calle 11', 5, N'clara.jimenez@example.com', N'9988223344', 2, 1),
(23, N'55669900', N'Federico', N'Moreno', N'Masculino', N'Argentino', CAST(N'1984-07-14' AS Date), N'Calle 12', 6, N'federico.moreno@example.com', N'5566990011', 3, 1),
(24, N'33446677', N'Mónica', N'Paz', N'Femenino', N'Argentino', CAST(N'1982-10-30' AS Date), N'Calle 13', 1, N'monica.paz@example.com', N'3344667788', 4, 1)

SET IDENTITY_INSERT [dbo].[Medico] OFF
GO

--SELECT * FROM Medico GO