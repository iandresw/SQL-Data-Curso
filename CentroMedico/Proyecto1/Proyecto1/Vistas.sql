CREATE VIEW PacienteTurnosPendientes AS
SELECT P.IdPaciente, P.nombrePaciente, P.apellidoPaciente, T.IdTurno, T.estadodelturno FROM Paciente P
	INNER JOIN TurnoPaciente Tp
	ON Tp.idPaciente = P.idPaciente
	INNER JOIN Turno T
	ON T.idTurno = Tp.idTurno
WHERE isnull(T.estadoDelTurno, 0) = 0

SELECT * FROM PacienteTurnosPendientes


--- UNA VISTA DE PACIENTE CON TURNOS PENDIEENTES EN ESTADO 0