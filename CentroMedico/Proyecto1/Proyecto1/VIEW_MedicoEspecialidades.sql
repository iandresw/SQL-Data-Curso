CREATE VIEW VIEW_MedicosEspecialidades AS 
SELECT M.idMedico, M.Nombre, M.Apellido, ME.descripcion FROM Medico M
INNER JOIN MedicoEspecialidad ME
ON ME.idMedico = M.idMedico

SELECT * FROM VIEW_MedicosEspecialidades
SELECT * FROM mEDICO