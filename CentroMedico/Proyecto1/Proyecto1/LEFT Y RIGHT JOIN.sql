SELECT * FROM Paciente P
LEFT JOIN TurnoPaciente T
ON P.idPaciente = T.idPaciente

-- devuelVE SOLO  LOS DATOS DE LA PRIMERA TABLA SIN IMPORTAR SI EXISTEN ONO EN LA SEGUNDA TABLA

SELECT * FROM Paciente P
RIGHT JOIN TurnoPaciente T
ON P.idPaciente = T.idPaciente

 --devuelVE SOLO  LOS DATOS DE LA SEGUNDA TABLA SIN IMPORTAR SI EXISTEN ONO EN LA PRIMERA  TABLA

 -- siempre es recomendable es hacer la conexion en opn con las primary key 
-- colocar el primer campo en on conla primera tabla 
-- colocar siempre halias o el nombre de la tabla antes del camposeguido del punto