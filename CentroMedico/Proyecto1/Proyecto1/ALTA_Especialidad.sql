ALTER PROC ALTA_Especialidad(
	@nombreEspecialidad varchar(50)
	)
AS
SET NOCOUNT ON
IF NOT EXISTS (SELECT * FROM Especialidad WHERE nombreEspecialidad=@nombreEspecialidad)
	BEGIN
		INSERT INTO Especialidad(nombreEspecialidad)
		VALUES (@nombreEspecialidad)
		PRINT 'SE HA INGRESADO UNA ESPECIALIDAD NUEVA'
		RETURN
	END
ELSE 
	BEGIN
		PRINT 'LA ESPECIALIDAD YA EXISTE EN EL REGISTRO'
		RETURN
	END 


/*
EXEC ALTA_Especialidad 'Nutriologo'
EXEC ALTA_Especialidad 'Cardiologo'
select * from Turno
select * from TurnoPaciente
select * from paciente
select * From medico
SELECT * From medicoEspecialidad
SELECT * FROM Especialidad
set
*/