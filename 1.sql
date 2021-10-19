 use master;
GO  
CREATE DATABASE [PRUEBA_DB]
ON   
( NAME = 'Data',  
    FILENAME = 'C:\DATA\Pruebadat.mdf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 )  
LOG ON  
( NAME = 'Log',  
    FILENAME = 'D:\LOGS\Pruebalog.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB ) ;  



GO  
BACKUP DATABASE PRUEBA_DB
TO DISK = 'E:\BACKUPS\Prueba_DB.bak'
   WITH FORMAT,
      MEDIANAME = 'backup',
      NAME = 'Respaldo completo de Prueba_DB';
GO


Alter Database PRUEBA_DB Set Single_User With RollBack Immediate
ALTER DATABASE PRUEBA_DB COLLATE SQL_Latin1_General_CP1_CI_AS
ALTER DATABASE PRUEBA_DB SET MULTI_USER WITH ROLLBACK IMMEDIATE
GO