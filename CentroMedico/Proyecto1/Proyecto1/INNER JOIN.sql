SELECT * FROM PACIENTE
SELECT * FROM TRUNOpACINTE

SELECT * FROM Paciente P
INNER JOIN TurnoPaciente T
On P.idPaciente = T.idPaciente

-- siempre es recomendable es hacer la conexion en opn con las primary key 
-- colocar el primer campo en on conla primera tabla 
-- colocar siempre halias o el nombre de la tabla antes del camposeguido del punto