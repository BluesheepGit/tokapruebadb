--18
ALTER DATABASE PRUEBA_DB 
SET RECOVERY FULL;
GO

BACKUP DATABASE PRUEBA_DB 
TO DISK = 'E:\BACKUPS\FULL\BPRUEBA_DB.BAK'
WITH  STATS = 10,INIT;
GO

BACKUP LOG PRUEBA_DB 
TO DISK = 'E:\BACKUPS\LOGS\PRUEBA_DB_bak_log.bak' 
WITH stats =30
go