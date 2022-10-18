

-- *************************tabla temporal en memoria , se destruye despues de crear
DECLARE @miTabla TABLE (ID INT IDENTITY (1,1), PAIS VARCHAR (50))

INSERT INTO @miTabla VALUES('mexico')
INSERT INTO @miTabla VALUES('ecuador')
INSERT INTO @miTabla VALUES('el savador')
INSERT INTO @miTabla VALUES('costa rica')
INSERT INTO @miTabla VALUES('panama')

select * from @mitabla

---**********************TABLA TEMPORAL FISICA (ESTARA DISPONIBLE HASTA QUE LE SERVIDOR SE REINICIE)

CREATE TABLE #miTabla (id int IDENTITY (1,1), Nombre varchar (50), apellido varchar(50))


INSERT INTO #miTabla VALUES('alejandro','lopez')
INSERT INTO #miTabla VALUES('alejandro','lopez')
INSERT INTO #miTabla VALUES('alejandro','lopez')
INSERT INTO #miTabla VALUES('alejandro','lopez')

select * from #Mitabla

DROP TABLE #miTabla


-- *****************TABLA TEMPORAL QUE ALMACENA LOS TURNOS DE UN PACIENTE Y FILTRA LOS TURNO POR PACIENTE ESPECIFICO
DECLARE @turnos TABLE  (id int IDENTITY (1,1), idTurno turno, idPaciente paciente)
DECLARE @idPaciente paciente
SET @idPaciente  = 15
INSERT INTO @turnos (idTurno, idPaciente)
SELECT TP.idTurno, P.idPaciente FROM Paciente P
INNER JOIN TurnoPaciente TP
ON TP.idPaciente = P.idPaciente
--WHERE TP.idPaciente = @idPaciente
DECLARE @i int, @total int
SET @i = 1
SET @total = (SELECT COUNT(*) FROM @turnos)
WHILE @i<= @total
BEGIN
	IF (select idPaciente from @turnos WHERE id = @i) <> 12
		DELETE FROM @turnos WHERE id = @i
	SET @i = @i + 1
END


SELECT * FROM Paciente P
	INNER JOIN @Turnos T
	ON T.idPaciente = p.idPaciente
SELECT * from @turnos




