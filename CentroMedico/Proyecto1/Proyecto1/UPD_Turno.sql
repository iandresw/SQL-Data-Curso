ALTER PROC UPD_Turno(
	@idTurno turno,
	@estadoDelTurno tinyint,
	@observacion observacion
	)
AS
SET NOCOUNT ON
IF EXISTS (SELECT * FROM Turno WHERE idTurno = @idTurno)
	UPDATE Turno SET estadoDelTurno = @estadoDelTurno, 
					observacion = @observacion 
	WHERE idTurno = @idTurno
ELSE
	SELECT 0 AS RESULTADO




/*
EXEC UPD_Turno 5, 2, 'el tuno se ha modificado con el proceso UPD_Turnoo despues de la corrreccion'

SELECT * FROM Turno
SELECT * FROM TurnoPaciente
SELECT * FROM 
*/
