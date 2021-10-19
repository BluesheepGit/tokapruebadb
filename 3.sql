---PK
ALTER TABLE Tb_Beneficiarios
ADD CONSTRAINT pk_Tb_Beneficiarios PRIMARY KEY (id);
ALTER TABLE Tb_CatClabeBancos
ADD CONSTRAINT pk_Tb_CatClabeBancos PRIMARY KEY (idClabe);
ALTER TABLE Tb_CatErrorRegistraOrden
ADD CONSTRAINT pk_Tb_CatErrorRegistraOrden PRIMARY KEY (IdErrorRegistraOrden);
ALTER TABLE Tb_CatEstatus
ADD CONSTRAINT pk_Tb_CatEstatus PRIMARY KEY (idEstatus)
ALTER TABLE Tb_CatOperante
ADD CONSTRAINT pk_Tb_CatOperante PRIMARY KEY (idOperante)
ALTER TABLE Tb_CatTipoCuenta
ADD CONSTRAINT pk_Tb_CatTipoCuenta PRIMARY KEY (idTipoCuenta)
alter table Tb_CatTipoPago
ADD CONSTRAINT pk_Tb_CatTipoPago PRIMARY KEY (idTipoPago)
alter table TB_Cuentas
ADD CONSTRAINT pk_TB_Cuentas PRIMARY KEY (idCuenta)
alter table Tb_RegistraOrden
ADD CONSTRAINT pk_Tb_RegistraOrden PRIMARY KEY (IdRegistraOrden)
alter table Tb_TrackingTarjetas
add constraint  pk_Tb_TrackingTarjetas Primary key (idTracking)



/*----------- CONSTRAINT  Tb_RegistraOrden -------------*/
ALTER TABLE Tb_RegistraOrden
ADD CONSTRAINT FK_Tb_RegistraOrden_Tb_Cuentas FOREIGN KEY (IdCuenta) 
REFERENCES Tb_Cuentas(IdCuenta)

ALTER TABLE Tb_CatOperante 
ADD CONSTRAINT UQ_Tb_CatOperante  Unique (CodigoOperante );

ALTER TABLE Tb_Tarjetas
ADD CONSTRAINT df_Tb_Tarjetas_Activo DEFAULT 1 FOR Activo

ALTER TABLE Tb_Cuentas
ADD CONSTRAINT df_Tb_Cuentas_FechaRegistro DEFAULT GetDate() FOR FechaRegistro

ALTER TABLE Tb_CatEstatus 
ADD CONSTRAINT CH_Tb_CatEstatus_descripcion CHECK (Descripcion <> '')
