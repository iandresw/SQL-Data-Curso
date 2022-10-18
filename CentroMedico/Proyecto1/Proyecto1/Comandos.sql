SELECT * FROM Turno GROUP BY estadoDelTurno HAVING COUNT(estadoDelTurno) = 1
SELECT * FROM TURNO


--Operador IN muestra los dados que contiene la informacion enviade dentro de los parentesis 
SELECT * FROM Turno WHERE estadoDelTurno IN(2)

-- Operador LIKE muestra los datos de una cadena buscando mas haya de la cadena despues o antes del sigo %%
SELECT * FROM Paciente WHERE nombrePaciente LIKE '%uel%'

-- Operador NOT busca datos que no ocupamos o distinto de dicho patron o numero (negar la condicion) tambien se pueude asociar con el operador IN
SELECT * FROM Paciente WHERE nombrePaciente NOT LIKE '%uel%'

-- Operador BETWEEN operador de rando puede estar determinado entre fechas, numeros 
SELECT * FROM Turno WHERE FechaTurno BETWEEN '1993-01-02' AND '2019-05-10'
SELECT * FROM Turno WHERE estadoDelTurno BETWEEN 1 AND 1

