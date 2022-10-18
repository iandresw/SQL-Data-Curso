ALTER PROC ALTA_Medico(
	@nombre varchar(50),
	@apellido varchar(50),
	@idEspecialidad int,
	@descripcion varchar(50)=''
	)
AS
SET NOCOUNT ON -- PARA QUE NO APAREZCA EL MENSAJE DE CUANTAS FILAS HAN SIDO AFECTADAS
IF NOT EXISTS (SELECT * FROM Medico WHERE nombre=@nombre AND apellido=@apellido)
	BEGIN
		INSERT INTO Medico(nombre, apellido)
		VALUES (@nombre, @apellido)
		DECLARE @auxIdMedico int
		SET @auxIdMedico = @@IDENTITY
		INSERT INTO MedicoEspecialidad (idMedico, idEspecialidad, descripcion)
		VALUES (@auxIdMedico,@idEspecialidad, @descripcion)
		PRINT 'SE HA INGRESADO EL MEDICO'
		RETURN
	END
ELSE 
	BEGIN
		PRINT 'EL MEDICO YA EXISTE'
		RETURN
	END 

/*
EXEC ALTA_Medico 'Juan', 'Bejarano', 4,''
select * from Turno
select * from TurnoPaciente
select * from paciente
select * From medico
SELECT * From medicoEspecialidad
SELECT * FROM Especialidad
set
*/