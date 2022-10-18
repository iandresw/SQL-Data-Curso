ALTER PROC SELECT_TurnosPaciente(
		@idPaciente paciente
)
AS
SET NOCOUNT ON
IF EXISTS (
		SELECT * FROM Paciente P
		 INNER JOIN TurnoPaciente TP
		 ON TP.idPaciente = P.idPaciente
		 INNER JOIN Turno T
		 ON T.idTurno = TP.idTurno

		 INNER JOIN MedicoEspecialidad M
		 ON M.idMedico = TP.idMedico
		 WHERE P.idpaciente = @idPaciente )
	 SELECT * FROM Paciente P
	 INNER JOIN TurnoPaciente TP
	 ON TP.idPaciente = P.idPaciente
	 INNER JOIN Turno T
	 ON T.idTurno = TP.idTurno

	 INNER JOIN MedicoEspecialidad M
	 ON M.idMedico = TP.idMedico
	 WHERE P.idpaciente = @idPaciente 
	ELSE 
	PRINT 'NO EXISTE HITORIAS CLINICAS PARA EL PACIENTE'
	Select 0 AS RESULTADO
 /*
 EXEC SELECT_TurnosPaciente 12
 select * from medicoespecialidad
  select * from PACIENTE
  insert into medicoespecialidad values(1,2,'medico clinco')
 */
 


