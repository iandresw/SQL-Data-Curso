create FUNCTION FNC_FechaTexto (@fecha datetime)
RETURNS varchar(60)
AS
BEGIN
DECLARE @dia varchar(20)
DECLARE @Mes varchar(20)
DECLARE @fechaTexto varchar(50)
			
SET @mes = (CASE WHEN datepart (dw, @fecha) = 1 THEN 'Domingo '+ CONVERT(char(2),datepart(dd,@fecha))
				WHEN datepart (dw, @fecha) = 2 THEN 'Lunes '+ CONVERT(char(2),datepart(dd,@fecha))
				WHEN datepart (dw, @fecha) = 3 THEN 'Martes '+ CONVERT(char(2),datepart(dd,@fecha))
				WHEN datepart (dw, @fecha) = 4 THEN 'Miercoles '+ CONVERT(char(2),datepart(dd,@fecha))
				WHEN datepart (dw, @fecha) = 5 THEN 'Jueves '+ CONVERT(char(2),datepart(dd,@fecha))
				WHEN datepart (dw, @fecha) = 6 THEN 'Viernes '+ CONVERT(char(2),datepart(dd,@fecha))
				WHEN datepart (dw, @fecha) = 7 THEN 'Sabado '+ CONVERT(char(2),datepart(dd,@fecha))
			END)
	
SET @mes = (CASE WHEN datepart (mm, @fecha)= 1 THEN 'ENERO'
				 WHEN datepart (mm, @fecha)= 2 THEN 'Febrero'
				 WHEN datepart (mm, @fecha)= 3 THEN 'Marzo'
				 WHEN datepart (mm, @fecha)= 4 THEN 'Abril'
				 WHEN datepart (mm, @fecha)= 5 THEN 'Mayo'
				 WHEN datepart (mm, @fecha)= 6 THEN 'Junio'
				 WHEN datepart (mm, @fecha)= 7 THEN 'Julio'
				 WHEN datepart (mm, @fecha)= 8 THEN 'Agosto'
				 WHEN datepart (mm, @fecha)= 9 THEN 'Septiembre'
				 WHEN datepart (mm, @fecha)= 10 THEN 'Octrubre'
				 WHEN datepart (mm, @fecha)= 11 THEN 'Noviembre'
				 WHEN datepart (mm, @fecha)= 12 THEN 'Diciembre'
			END)
SET @fechaTexto = @dia +' de '+ @mes
RETURN @fechaTexto
END



--print dbo.FNC_FechaTexto('20190515')

