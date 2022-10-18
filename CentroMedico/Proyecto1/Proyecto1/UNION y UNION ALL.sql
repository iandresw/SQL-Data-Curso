-- dos consultas diferentes con la misma cantidad de campos 

select * from turno 
union
select * from turno

select * from turno where estadodelturno=1
union ALL
select * from turno