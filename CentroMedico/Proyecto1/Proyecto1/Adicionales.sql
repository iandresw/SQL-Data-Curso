sp_Help Paciente
sp_Helptext ALTA_Turnos

CREATE TYPE pais FROM Char(3)

CREATE FUNCTION nombreFuncion(@var int)
RETURNS int
AS
BEGIN
	SET @var = @var * 5
	RETURN @var
	PRINT @var
END

SELECT dbo.nombreFuncion(33)

alter table paciente add estadoDelPaciente smallint
select * from paciente
alter table paciente drop column estadodelpaciente 
create table ejemploDrop(campo1 int, campo2 int)
drop table ejemploDrop
alter table paciente drop column estadodelpaciente 

-- TRUNCATE ELIMINA LOS REFISTROS DE UNA TABLA INCLUSO REICICIA LOS IDENTITY 
create table ejemploTruncate(campo1 int IDENTITY (1,1), campo2 int, campo3 int)
drop table ejemploTruncate
INSERT INTO  ejemploTruncate VALUES(2,6)
drop table ejemploDrop
SELECT * FROM ejemploTruncate
TRUNCATE TABLE ejemploTruncate

-- FUNCION LEFT Y RIGHT
declare @var1 varchar(20)
declare @var2 varchar(20)
set @var1 = '            ramIr"o'
set @var2 = '     gonz@ales          '
print left(@var1,1) +  left(@var2,1)
-- len cuenta la cadena
print left(@var1,LEN(@var1)-3)
print LEN(@var1)
-- LOWER COMBIERTE LA CADENA A MINUSCULA
print LOWER(@var1)
--CAMBIA TODA LA CADENA A MAYUSULA
print upper(@var2)
--CAMBIA LA PRIMERA LETRA A MAYUCASULA
print upper(LEFT(@var1,1)) + LOWER(RIGHT(@var1,LEN(@var1)-1))
print upper(LEFT(@var2,1)) + LOWER(RIGHT(@var2,LEN(@var1)-1))
--REPLACE REMPLAZA CARATERES O CONJUNTO DE CARACTERES DE UNA CAMPO VARCHAR SELECT REPLACE(@var2,'CARATER A BUSCAR PARA REMPLAZAR','NUEVO CARTER')
--SELECT REPLACE(@var2,'"','')

--REPLICATE EN CASO DE REPITA UNA CADENA UN NUMERO FINITO DE VECES REPLICATE('VALOR A REPETIR','NUMERO DE VECES QUE SE REPETIRA')
PRINT REPLICATE ('0',5)
--funciones ltrim y rtrim elimina espacios a la izquiewra y derecha 
SELECT @var1 + @var2 +'*'
SELECT LTRIM(RTRIM(@var1)) + LTRIM(RTRIM(@var2)) +'*'

--concat 
select CONCAT(LTRIM(RTRIM(@var1)),' ',LTRIM(RTRIM(@var2)))
--*****************fechas
--GETDATE devuelve la hora del equipo
select getDATE()
--GETUTCDATE  devuelve la hora meridiano 
select getutcdate()
-- dateadd(DAY O HOUR O YEAR,'CANTIDAD a quitar o a poner',(la hora que vamos a cambiar))
SELECT DATEADD(DAY,2,GETDATE())
SELECT DATEADD(HOUR,2,GETDATE())
SELECT DATEADD(YEAR,2,GETDATE())
--DATEDIFF INTERVALO ENTRE FECHAS 
SELECT DATEDIFF(YEAR, GETDATE(),'20170120')
SELECT DATEDIFF(DAY, GETDATE(),'20170120')
SELECT DATEDIFF(YEAR,'20170120', GETDATE())
--DATEPART(INTERVALO, FECHA) OBTIENE EL DIA O ANO O MINUTOI ACTUAL
SELECT DATEPART(YEAR,GETDATE())
SELECT DATEPART(mi,GETDATE())
SELECT DATEPART(YEAR,GETDATE())
-- ISDATE VERIFICA UNA FECHA CORREECTA
PRINT ISDATE(GETDATE()) -- ES CORECTA IMPRIME UNO
PRINT ISDATE('20190134') --NO ESCORRECTA DEVUELVE CERO 
-- ********************************************************FUNCIONES DE CONVERCION 
CAST --(NO CAMBIA LA VARIABLE SI NO EL VALOR EN EL MOMENTO DE USO)


DECLARE @NUMERO MONEY
SET @NUMERO = 500.40
PRINT @NUMERO
SELECT CAST (@NUMERO AS INT)
PRINT @NUMERO
SELECT CAST(idPaciente AS money) FROM Paciente

CONVERT -- PERMITE COMVERTIR CON MAYOR DETALLE RECIBE PARAMETROS
DECLARE @NUMERO MONEY
PRINT @NUMERO
SET @NUMERO = 500.40
print convert(int, @numero)

declare @fecha datetime
set @fecha = getDate()
print @fecha
print convert(char(20),@fecha)
print convert(char(20),@fecha,112) -- devuelve la fecha en 8 carateres 20221006 depende del ultimo numero (112)
print convert(char(20),@fecha,111) -- devuelve la fecha en 8 carateres 2022/10/06 depende del ultimo numero (111)