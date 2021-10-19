insert into Tb_CatTipoPago (FechaRegistro,Clave,Descripcion,Status)  values(getdate(),105,'Tarjeta Credito',1),(getdate(),675,'Tarjeta Debito',0),(getdate(),495,'Tarjeta Deito',1),(getdate(),135,'Tarjeta Credito',1),(getdate(),445,'Tarjeta Credito',0)

insert into Tb_CatTipoCuenta (FechaRegistro, Clave, Descripcion, Status) values ('2:29 PM', 36, 'Aliquam augue quam, sollicitudin vitae ', 1), ('3:42 PM', 2, 'Ut at dolor quis odio.', 1),('7:02 AM', 35, 'Curabitur ', 1), ('6:27 PM', 21, 'Nullam porttitor lacus.', 1), ('4:40 PM', 11, 'Duis at veli', 0);

insert into Tb_CatOperante(CodigoOperante) values ('asfsd656'),('978XSfLA'),('CRPLOAZQ'),('RDELKA70')

insert into TB_Cuentas(IdClabe,ClabeInterbancaria,Etiqueta,MontoMaximo, IdUsuario,FechaRegistro,FechaActualizacion,Status,HashCuenta,TipoCuenta) 
values (2, Cast('AMEX465' As varbinary(100)),'Oro',25000.00,1,getdate(),getdate(),1,HASHBYTES('MD5','4as564c'),7),
		 (3, Cast('HSBCasc4a4e' As varbinary(100)),'Basico',4000.00,1,getdate(),getdate(),0,HASHBYTES('MD5','45645adasdg'),9),
		  (4, Cast('HSBaaf864s' As varbinary(100)),'Premium',68000.00,1,getdate(),getdate(),1,HASHBYTES('MD5','M894as'),10),
		   (5, Cast('BBVA7561444fsd' As varbinary(100)),'Cuenta clasica',7300.00,1,getdate(),getdate(),0,HASHBYTES('MD5','SleepingForest'),8)

insert into Tb_CatEstatus(Descripcion,Status) values('Pagado',1),('Pendiente',0)


