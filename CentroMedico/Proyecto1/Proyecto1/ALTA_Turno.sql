ALTER PROC ALTA_Turnos(
	@idPaciente paciente,
	@fechaTurno varchar(14), -- 20221014 12:00
	@idMedico medico,
	@observacion observacion=''
	)
AS
SET NOCOUNT ON -- PARA QUE NO APAREZCA EL MENSAJE DE CUANTAS FILAS HAN SIDO AFECTADAS
IF NOT EXISTS (SELECT TOP 1 idTurno FROM Turno WHERE fechaTurno=@fechaTurno)
	BEGIN
		INSERT INTO Turno(fechaTurno, estadoDelTurno, observacion)
		VALUES (@fechaTurno, 0, @observacion)
		DECLARE @auxIdTurno turno
		SET @auxIdTurno = @@IDENTITY
		INSERT INTO TurnoPaciente (idTurno, idPaciente, idMedico)
		VALUES (@auxIdTurno,@idPaciente, @idMedico)
		PRINT 'SE HA INGRESADO EL TURNO'
		RETURN
	END
ELSE 
	BEGIN
		PRINT 'EL TURNO YA EXISTE'
		RETURN
	END 

/*
EXEC ALTA_Turnos 13, '20221001 08:00', 2,'El paciente se debe presentar en ayunas'
select * from Turno
select * from TurnoPaciente
select * from paciente
select * From medico
insert into Medico values(1, 'Manuel', 'Medina')
insert into  Medico values('Migel', 'Maradiaga')
insert into Medico values('Manuel', 'Medina') 
ESTADO = 0 (PENDEINTE)
ESTADO = 1 (REALIZADO)
ESTADO = 2 (CANCELADO)
*/
