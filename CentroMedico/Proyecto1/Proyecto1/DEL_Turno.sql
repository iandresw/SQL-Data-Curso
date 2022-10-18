ALTER PROC DEL_Turno(
	@idTurno turno
	)
AS
SET NOCOUNT ON
IF EXISTS (SELECT * FROM Turno WHERE idTurno = @idTurno)
	BEGIN
		DELETE FROM TurnoPaciente WHERE idTurno = @idTurno
		DELETE FROM Turno WHERE idTurno = @idTurno
		
	END
ELSE
	SELECT 0 AS RESULTADO




/*
EXEC DEL_Turno 21

SELECT * FROM Turno
SELECT * FROM TurnoPaciente
SELECT * FROM 
*/