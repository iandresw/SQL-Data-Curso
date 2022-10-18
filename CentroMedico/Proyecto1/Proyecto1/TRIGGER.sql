CREATE TRIGGER PacientesCreados ON Paciente
AFTER INSERT 
AS

IF (SELECT idPais FROM inserted)= 'MEX'
	INSERT INTO  PacienteLog(idPaciente, idPais , fechaDeAlta)
	SELECT i.idPaciente, idPais, GETDATE() FROM INSERTED i

select * from pacienteLog