 IF OBJECT_ID ('TG_Ins_Tb_RegistraOrden')IS NOT NULL
BEGIN
   DROP TRIGGER TG_Ins_Tb_RegistraOrden;
END;
 GO
 
 create trigger TG_Ins_Tb_RegistraOrden
  on Tb_RegistraOrden
  For insert
 as 
 BEGIN
Insert into Tb_TrackingRegistraOrden (IdRegistraOrden, Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) SELECT
         ins.IdRegistraOrden ,'i','IdOrden','ninguno',  cast(ins.IdOrden as varchar(300)) ,User_id(suser_name()),suser_name() from inserted ins;
    Insert into Tb_TrackingRegistraOrden (IdRegistraOrden,Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) SELECT
        ins.IdRegistraOrden,'i','IdUsuario','ninguno', cast(ins.IdUsuario  as varchar(300)),User_id(suser_name()),suser_name() from inserted ins;
    Insert into Tb_TrackingRegistraOrden (IdRegistraOrden,Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) SELECT
        ins.IdRegistraOrden,'i','IdCuenta','ninguno', cast(ins.IdCuenta  as varchar(300)),User_id(suser_name()),suser_name() from inserted ins;
    Insert into Tb_TrackingRegistraOrden (IdRegistraOrden,Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) SELECT
        ins.IdRegistraOrden ,'i','Empresa','ninguno',  cast(ins.Empresa  as varchar(300)) ,User_id(suser_name()),suser_name() from inserted ins;
    Insert into Tb_TrackingRegistraOrden (IdRegistraOrden,Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) select
        ins.IdRegistraOrden,'i','ClaveRastreo','ninguno', cast(ins.ClaveRastreo  as varchar(300)) ,User_id(suser_name()),suser_name() from inserted ins;
END


/*-------------*/
 IF OBJECT_ID ('TG_Del_Tb_RegistraOrden')IS NOT NULL
BEGIN
   DROP TRIGGER TG_Del_Tb_RegistraOrden;
END;
 GO
 
 create trigger TG_Del_Tb_RegistraOrden
  on Tb_RegistraOrden
  For Delete
 as 
 BEGIN
	Insert into Tb_TrackingRegistraOrden (IdRegistraOrden, Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) SELECT
         del.IdRegistraOrden ,'i','IdOrden','ninguno', cast(del.IdOrden as varchar(300)) , User_id(suser_name()),suser_name() from deleted del;
    Insert into Tb_TrackingRegistraOrden (IdRegistraOrden,Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) SELECT
        del.IdRegistraOrden,'i','IdUsuario','ninguno',cast(del.IdUsuario as varchar(300)), User_id(suser_name()),suser_name() from deleted del;
    Insert into Tb_TrackingRegistraOrden (IdRegistraOrden,Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) SELECT
        del.IdRegistraOrden,'i','IdCuenta','ninguno',cast(del.IdCuenta as varchar(300))User_id(suser_name()),suser_name()from deleted del;
    Insert into Tb_TrackingRegistraOrden (IdRegistraOrden,Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) SELECT
        del.IdRegistraOrden ,'i','Empresa','ninguno', cast(del.Empresa as varchar(300)) , User_id(suser_name()),suser_name() from deleted del;
    Insert into Tb_TrackingRegistraOrden (IdRegistraOrden,Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) select
        del.IdRegistraOrden,'i','ClaveRastreo','ninguno',cast(del.ClaveRastreo as varchar(300)), User_id(suser_name()),suser_name() from deleted del;
END
/*-----------*/
 IF OBJECT_ID ('TG_up_Tb_RegistraOrden')IS NOT NULL
BEGIN
   DROP TRIGGER TG_Up_Tb_RegistraOrden;
END;
 GO
 
create trigger TG_Up_Tb_RegistraOrden
  on Tb_RegistraOrden
  For Update
 as 
 BEGIN
IF ((Select IdOrden from deleted) <> (select IdOrden from inserted) )
	BEGIN
		Insert into Tb_TrackingRegistraOrden (IdRegistraOrden, Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) SELECT
			 del.IdRegistraOrden ,'U','IdOrden',del.IdOrden, ins.IdOrden , User_id(suser_name()),suser_name() from deleted del 
			 inner join inserted ins on del.IdRegistraOrden = ins.IdRegistraOrden;
	END
IF ((Select IdUsuario from deleted) <> (select IdUsuario from inserted) )
	BEGIN
		Insert into Tb_TrackingRegistraOrden (IdRegistraOrden, Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) SELECT
			 del.IdRegistraOrden ,'U','IdUsuario',del.IdUsuario, ins.IdUsuario , User_id(suser_name()),suser_name() from deleted del 
			 inner join inserted ins on del.IdRegistraOrden = ins.IdRegistraOrden;
	END
IF ((Select IdCuenta from deleted) <> (select IdCuenta from inserted) )
	BEGIN
		Insert into Tb_TrackingRegistraOrden (IdRegistraOrden, Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) SELECT
			 del.IdRegistraOrden ,'U','IdCuenta',del.IdCuenta, ins.IdCuenta , User_id(suser_name()),suser_name() from deleted del 
			 inner join inserted ins on del.IdRegistraOrden = ins.IdRegistraOrden;
	END
IF ((Select Empresa from deleted) <> (select Empresa from inserted) )
	BEGIN
		Insert into Tb_TrackingRegistraOrden (IdRegistraOrden, Tipo,Columna,valorAnterior,valorNuevo,Usuario,UsuarioDB) SELECT
			 del.IdRegistraOrden ,'U','IdCuenta',del.Empresa, ins.Empresa , User_id(suser_name()),suser_name() from deleted del 
			 inner join inserted ins on del.IdRegistraOrden = ins.IdRegistraOrden;
	END
 END

