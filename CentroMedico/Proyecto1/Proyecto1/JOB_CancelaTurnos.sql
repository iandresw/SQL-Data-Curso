
UPDATE Turno SET estadoDelTurno = 2  WHERE convert(char(8),fechaTurno,112) < convert (char(8),getdate() ,112)
AND estadodelturno = 0







/*actualiza el estado del turno estadoDElTurno de 0 a 2 todo antyes de la fecha del dia de hoy (cancela fechas perdidas)





select * from turno
select * from turnoestado
*/
