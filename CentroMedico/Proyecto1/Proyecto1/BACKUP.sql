
DECLARE @fecha char(12) --201905191250
DECLARE @path varchar(50)
DECLARE @name varchar(20)
SET @fecha = CONVERT(CHAR(8), getDate(), 112) + replace(convert(char(5), getdate(), 108),':','')  --esto imprime en este formato 201905191250
SET @path = 'C:\Bases de Datos Saft\centromedico01'+@fecha+'.bak'
SET @name = 'centroMedico'+@fecha
BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME=@name



