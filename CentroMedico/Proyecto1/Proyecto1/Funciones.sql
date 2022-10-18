
--******************************FUNCIONES DE TIPO ESCALAR (RETORNAN UN UNICO VALOR)
CREATE FUNCTION nombreFunbcion(@var int)
RETURNS INT
AS
BEGIN
	SET @var = @var * 5
	RETURN @var
END
--Concatena dos  columnas (depedera del numero de parametros a concatenar)
CREATE FUNCTION concatenar(
		@nombre varchar(50),
		@Apellido varchar(50)
		)
RETURNS varchar (100)
AS
BEGIN
	DECLARE @resultado varchar(100)
	SET @resultado = @nombre +' '+ @apellido
	RETURN @resultado
END

select dbo.concatenar ('alberto', 'rodriguez')


-- muestra el pais de la descrpcion 
alter FUNCTION  obtenerPais(
					@idPaciente paciente
					)
RETURNS varchar (50)
AS
BEGIN
	DECLARE @pais varchar (50)
	SET @pais = (SELECT PA.nombrePais FROM Paciente P
					INNER JOIN Pais PA
					ON PA.idPais = P.idPais
					WHERE idPaciente = @idPaciente)
	RETURN  @pais
END

select dbo.obtenerPais (12)
select * from paciente



--******************* FUNCIONES DE TIPO TABLA

ALTER FUNCTION listaPaices()
RETURNS @paices TABLE (idPais char(3), pais varchar(50))
AS
BEGIN
	INSERT INTO @paices VALUES('ESP','Espana')
	INSERT INTO @paices VALUES('HND','Honduras')
	INSERT INTO @paices VALUES('ESV','El Salvador')
	INSERT INTO @paices VALUES('COL','Colombia')
	INSERT INTO @paices VALUES('VNZ','Venezuela')

	return
END

select * from dbo.listapaices()







