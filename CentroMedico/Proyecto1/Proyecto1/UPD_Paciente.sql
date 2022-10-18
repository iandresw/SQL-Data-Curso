CREATE PROC UPD_Paciente(
		@dni varchar(50),
		@nombrePaciente varchar(50),
		@apellidoPaciente varchar(50),
		@fechaNacimiento varchar(8),
		@domicilio varchar(50),
		@idPais char(3),
		@telefono varchar(50),
		@email varchar(50),
		@observaciones observacion
	)
AS
SET NOCOUNT ON
IF EXISTS (SELECT * FROM Paciente WHERE dni = @dni)
	UPDATE Paciente SET nombrePaciente = @nombrePaciente, 
					 apellidoPaciente = @apellidoPaciente,
					 fechaNacimiento = @fechaNacimiento,
					 domicilio = @domicilio,
					 idPais = @idPais,
					 telefono = @telefono,
					 email = @email,
					 observaciones = observaciones
	WHERE dni = @dni
ELSE
	SELECT 0 AS RESULTADO

/*
EXEC UPD_Paciente 1011199400075, 'Andres','Bejarano','20221010','','HND','88630387','',''

SELECT * FROM Paciente
SELECT * FROM TurnoPaciente
SELECT * FROM 
*/