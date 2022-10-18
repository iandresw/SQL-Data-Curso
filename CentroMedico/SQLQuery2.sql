

-- Insertar valor dentro de una tabla
insert into tabla1 values (1)

USE centromedico
GO
insert into turno values ( '20200302 13:00', 0 , '' )
insert into turno values ( '20200303 14:00', 0 , '')
insert into turno values ( '20200303 15:30', 1 , 'El paciente ha sido atendido' )
insert into turno values ( '20200305 18:00', 2 , 'El paciente llamó para cancelar el turno' ) 

-- Mostar datos de una tabla 
select * from turno

-- Borra los datos de una tabla
delete from tabla1

-- reinicia la clave identity 
dbcc CHECKIDENT ('tabla1',RESEED,0)

