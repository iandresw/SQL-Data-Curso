ALTER PROC SEL_HistoiraPaciente(
		@idPaciente paciente 
)
AS
SET NOCOUNT ON
IF EXISTS (
		SELECT * FROM Paciente P
		INNER JOIN HistoriaPaciente HP
		ON HP.idPaciente = P.Idpaciente
		INNER JOIN Historia H
		ON H.idHistoria = HP.idHistoria
		INNER JOIN MedicoEspecialidad ME
		ON ME.idMedico = HP.idMedico
		INNER JOIN Medico M
		ON M.IdMedico = ME.idMedico
		WHERE P.idPaciente = @idPaciente)
	SELECT * FROM Paciente P
	INNER JOIN HistoriaPaciente HP
	ON HP.idPaciente = P.Idpaciente
	INNER JOIN Historia H
	ON H.idHistoria = HP.idHistoria
	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = HP.idMedico
	INNER JOIN Medico M
	ON M.IdMedico = ME.idMedico
	WHERE P.idPaciente = @idPaciente

ELSE
	PRINT 'NO EXISTE HITORIAS CLINICAS PARA EL PACIENTE'
	Select 0 AS RESULTADO


/*

SELECT *  FROM Historia
SELECT *  FROM HistoriaPaciente
*/