use PRUEBA_DB;

create table Tb_CatEstatus(
IdEstatus int   identity (1,1) not null,
Descripcion Varchar(30) not null,
Status bit not null

)

create table Tb_CatTipoCuenta(
IdTipoCuenta int   identity (1,1) not null,
FechaRegistro datetime not null,
Clave int not null,
Descripcion Varchar(50) not null,
Status bit not null

)

create table Tb_CatOperante(
IdOperante int   identity (1,1) not null,
CodigoOperante varchar(8) not null

)

create table Tb_CatTipoPago(
IdTipoPago int   identity (1,1) not null,
FechaRegistro datetime not null,
Clave int not null,
Descripcion varchar(50) not null,
Status bit not null
)

create table Tb_CatErrorRegistraOrden(
IdErrorRegistraOrden int   identity (1,1) not null,
FechaRegistro datetime not null,
Clave int not null,
Descripcion varchar(80) not null,
Status bit not null
)

create table Tb_CatClabeBancos(
id int  identity (1,1) not null,
FechaRegistro datetime not null,
FechaActualizacion datetime not null,
IdClabe varchar(5) not null,
Participante varchar(30) not null,
Status bit not null
)

create table TB_Cuentas(
IdCuenta int  identity (1,1) not null,
IdClabe varchar(5) not null,
ClabeInterbancaria varbinary(100) not null,
Etiqueta varchar(50) not null,
MontoMaximo money not null,
IdUsuario int not null,
FechaRegistro datetime not null,
FechaActualizacion datetime not null,
Status bit not null,
HashCuenta Varchar(100) not null,
TipoCuenta int not null
)

create table Tb_Beneficiarios(
Id int  identity (1,1) not null,
IdCuenta int not null,
NombreBeneficiario nvarchar(100) not null,
CorreoElectronico varchar(100) not null,
RFC varchar(13) not null,
CURP varchar(20) not null,
FechaRegistro datetime not null,
FechaActualizacion datetime not null,
Status bit not null
)

Drop table Tb_CatErrorRegistraOrden

create table Tb_RegistraOrden(
IdRegistraOrden int identity (1,1) not null,
FechaRegistro datetime not null,
FechaActualizacion datetime not null,
IdOrden varchar(10) not null,
IdUsuario int not null,
IdCuenta int not null,
Empresa varchar(15) not null,
ClaveRastreo varchar(30) not null,
ConceptoPago varchar(210) not null,
Monto numeric(19,2) not null,
ReferenciaNumerica varchar(7) not null,
Firma varchar(172) not null,
IdOperante int not null,
IdTipoCuenta int not null,
IdTipoPago int not null,
IdErrorRegistraOrden int not null,
Token varchar(200) not null,
IdEstatus int not null
)

create table Tb_TrackingRegistraOrden(
IdTracking int  identity (1,1) not null,
FechaRegistro datetime not null,
IdregistraOrden int not null,
Tipo varchar(1) not null,
Columna varchar(50) not null,
ValorAnterior Varchar(300) not null,
ValorNuevo varchar(300) not null,
Usuario int not null,
UsuarioDB varchar(20) not null
)

create table Tb_Tarjetas(
	IdTarjeta int  identity (1,1) not null,
	FechaRegistro datetime not null,
	FechaActualizacion datetime not null,
	Tarjeta varchar(16) not null,
	Monto numeric(19,2) not null,
	ConfirmacionWS varchar(100) not null,
	MontoComision Numeric(19,2) not null,
	ConfirmacionWSComision varchar(200) not null,
	IdUsuario int not null,
	IdRegistraOrden int not null,
	Token varchar(200) not null,
	Activo bit not null
)

create table Tb_TrackingTarjetas(
IdTracking int  identity (1,1) not null,
FechaRegistro datetime not null,
TipoOperacion varchar(1) not null,
IdCuenta int not null,
Columna varchar(30) not null,
valorAnterior varchar(30) not null,
valorNuevo varchar(30) not null,
UsuarioDB varchar(30) not null,
IdUsuario varchar(30) not null
)

