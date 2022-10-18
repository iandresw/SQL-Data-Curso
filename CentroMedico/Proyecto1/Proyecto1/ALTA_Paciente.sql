CREATE PROC ALTA_Paciente(
	@dni varchar(20),
	@nombrePaciente varchar(50),
	@apellidoPaciente varchar(50),
	@fechaNacimiento varchar(8),
	@domicilio varchar(50),
	@idpais char(3),
	@telefono varchar(10)='',
	@email varchar(50),
	@observaciones observacion=''
	)
AS
set nocount on
IF NOT EXISTS (SELECT * FROM Paciente WHERE dni=@dni)
	BEGIN
		INSERT INTO Paciente(dni, nombrePaciente, apellidoPaciente, fechaNacimiento, domicilio, idpais, telefono,email, observaciones)
		VALUES (@dni, @nombrePaciente, @apellidoPaciente, @fechaNacimiento, @domicilio, @idpais, @telefono, @email, @observaciones)
		PRINT 'SE INGRESO UN PACIENTE'
		RETURN
	END
ELSE 
	BEGIN
		PRINT 'YA EXISTE UN PACIETE CON ESTE REGISTRO'
		RETURN
	END 

/*
EXEC ALTA_Paciente '10111999880098', 'Rene', 'Bejarano', '19931006', 'Tegucigalpa', 'mex', '323321196', 'rene.andre1993gmail.com','n/a'
select * from paciente
*/