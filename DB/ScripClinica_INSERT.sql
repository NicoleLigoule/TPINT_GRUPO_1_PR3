﻿USE [BDClinica]
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

INSERT INTO [dbo].[Paciente] ([DNI_pc], [Nombre_pc], [Apellido_pc], [Sexo_pc], [Nacionalidad_pc], [FechaNacimiento_pc], [Direccion_pc], [Localidad_pc], [CorreoElectronico_pc], [Telefono_pc], [Estado_pc])
VALUES 
('23456789', 'Juan', 'González', 'Masculino', 'Argentino', '1985-06-15', 'Calle 14', 1, 'juan.gonzalez@example.com', '2345678901', 1),
('34567890', 'Ana', 'Martínez', 'Femenino', 'Argentino', '1992-07-20', 'Calle 15', 2, 'ana.martinez@example.com', '3456789012', 1),
('45678901', 'Luis', 'Rodríguez', 'Masculino', 'Argentino', '1988-08-25', 'Calle 16', 3, 'luis.rodriguez@example.com', '4567890123', 1),
('56789012', 'Sofía', 'Fernández', 'Femenino', 'Argentino', '1990-09-30', 'Calle 17', 4, 'sofia.fernandez@example.com', '5678901234', 1),
('67890123', 'Carlos', 'Sánchez', 'Masculino', 'Argentino', '1980-10-05', 'Calle 18', 5, 'carlos.sanchez@example.com', '6789012345', 1),
('78901234', 'María', 'García', 'Femenino', 'Argentino', '1995-11-10', 'Calle 19', 6, 'maria.garcia@example.com', '7890123456', 1),
('89012345', 'Pedro', 'Pérez', 'Masculino', 'Argentino', '1987-12-15', 'Calle 20', 1, 'pedro.perez@example.com', '8901234567', 1),
('90123456', 'Laura', 'Gómez', 'Femenino', 'Argentino', '1983-01-20', 'Calle 21', 2, 'laura.gomez@example.com', '9012345678', 1),
('01234567', 'Jorge', 'Díaz', 'Masculino', 'Argentino', '1979-02-25', 'Calle 22', 3, 'jorge.diaz@example.com', '0123456789', 1),
('12345679', 'Marta', 'Romero', 'Femenino', 'Argentino', '1986-03-30', 'Calle 23', 4, 'marta.romero@example.com', '1234567890', 1),
('23456780', 'Ricardo', 'Vázquez', 'Masculino', 'Argentino', '1991-04-05', 'Calle 24', 5, 'ricardo.vazquez@example.com', '2345678901', 1),
('34567891', 'Lucía', 'Molina', 'Femenino', 'Argentino', '1984-05-10', 'Calle 25', 6, 'lucia.molina@example.com', '3456789012', 1),
('45678902', 'Alberto', 'Navarro', 'Masculino', 'Argentino', '1982-06-15', 'Calle 26', 1, 'alberto.navarro@example.com', '4567890123', 1),
('56789023', 'Elena', 'Ramos', 'Femenino', 'Argentino', '1989-07-20', 'Calle 27', 2, 'elena.ramos@example.com', '5678901234', 1),
('67890134', 'Diego', 'Hernández', 'Masculino', 'Argentino', '1981-08-25', 'Calle 28', 3, 'diego.hernandez@example.com', '6789012345', 1)

GO

INSERT INTO [dbo].[HorarioAtencion] ([Legajo_ha], [DiaAtencion_ha], [HorarioAtencion], [Estado_ha])
VALUES 
(10, N'Lunes', 8, 1),
(10, N'Martes', 10, 1),
(11, N'Miércoles', 12, 1),
(11, N'Jueves', 14, 1),
(12, N'Viernes', 16, 1),
(12, N'Sábado', 8, 1),
(13, N'Lunes', 10, 1),
(13, N'Martes', 12, 1),
(14, N'Miércoles', 14, 1),
(14, N'Jueves', 16, 1),
(15, N'Viernes', 8, 1),
(15, N'Sábado', 10, 1),
(16, N'Lunes', 12, 1),
(16, N'Martes', 14, 1),
(17, N'Miércoles', 16, 1)
GO

-- Eliminar registros donde DniPaciente_tu es NULL
DELETE FROM [dbo].[Turnos]
WHERE [DniPaciente_tu] IS NULL;
GO

-- Insertar 15 registros nuevos en la tabla Turnos
INSERT INTO [dbo].[Turnos] ([Legajo_tu], [Fecha_tu], [DiaAtencion_ha], [Horario_tu], [Asistencia_tu], [DniPaciente_tu], [Descripcion_tu], [Estado_ha]) VALUES
(12, CAST(N'2024-03-01' AS Date), N'Lunes', 8, 1, N'23456789', N'Consulta general', 1),
(13, CAST(N'2024-03-02' AS Date), N'Martes', 10, 0, N'34567890', N'Revisión', 1),
(14, CAST(N'2024-03-03' AS Date), N'Miércoles', 12, 1, N'45678901', N'Chequeo anual', 1),
(15, CAST(N'2024-03-04' AS Date), N'Jueves', 14, 0, N'56789012', N'Consulta de seguimiento', 1),
(16, CAST(N'2024-03-05' AS Date), N'Viernes', 16, 1, N'67890123', N'Consulta general', 1),
(17, CAST(N'2024-03-06' AS Date), N'Sábado', 8, 1, N'78901234', N'Revisión', 1),
(12, CAST(N'2024-03-07' AS Date), N'Lunes', 10, 1, N'89012345', N'Chequeo anual', 1),
(13, CAST(N'2024-03-08' AS Date), N'Martes', 12, 0, N'90123456', N'Consulta de seguimiento', 1),
(14, CAST(N'2024-03-09' AS Date), N'Miércoles', 14, 1, N'01234567', N'Consulta general', 1),
(15, CAST(N'2024-03-10' AS Date), N'Jueves', 16, 0, N'12345679', N'Revisión', 1),
(16, CAST(N'2024-03-11' AS Date), N'Viernes', 8, 1, N'23456780', N'Chequeo anual', 1),
(17, CAST(N'2024-03-12' AS Date), N'Sábado', 10, 0, N'34567891', N'Consulta de seguimiento', 1),
(12, CAST(N'2024-03-13' AS Date), N'Lunes', 12, 1, N'45678902', N'Consulta general', 1),
(13, CAST(N'2024-03-14' AS Date), N'Martes', 14, 1, N'56789023', N'Revisión', 1),
(14, CAST(N'2024-03-15' AS Date), N'Miércoles', 16, 0, N'67890134', N'Chequeo anual', 1);
GO

--SELECT * FROM Medico GO
--SELECT * FROM Paciente GO
--SELECT * FROM HorarioAtencion GO
--SELECT * FROM Turnos GO
