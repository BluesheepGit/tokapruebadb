--6.1
CREATE PROCEDURE sp_registro_Tb_RegistraOrden
@IdOrden varchar(10),
@IdUsuario int,
@IdCuenta int,
@Empresa varchar(15),
@ClaveRastreo varchar(30),

@ConceptoPago varchar(210),
@Monto numeric(19,2),
@ReferenciaNumerica varchar(7),
@Firma varchar(172),
@IdOperante int,

@IdTipoCuenta int,
@IdTipoPago int,
@IdErrorRegistraOrden int,
@Token varchar(200),
@IdEstatus int

as begin
    declare @idIdentiti int

	DECLARE @TablaRespuesta  TABLE (
        noError int,
        message varchar(50)
    )

    Insert into Tb_RegistraOrden (FechaRegistro,FechaActualizacion,IdOrden , IdUsuario, IdCuenta, Empresa, ClaveRastreo, ConceptoPago, Monto, ReferenciaNumerica, Firma, IdOperante, IdTipoCuenta, IdTipoPago, IdErrorRegistraOrden, Token, IdEstatus)
    VALUES (getdate(),getdate(),@IdOrden,@IdUsuario,@IdCuenta,@Empresa,@ClaveRastreo,@ConceptoPago,@Monto,@ReferenciaNumerica,@Firma,@IdOperante,@IdTipoCuenta,@IdTipoPago,@IdErrorRegistraOrden,@Token,@IdEstatus)

    set @idIdentiti = SCOPE_IDENTITY()

    if (@idIdentiti > 0) begin
        insert into @TablaRespuesta (noError,message) values (@idIdentiti, 'Transacci�n exitosa.')
	end else Begin
        insert into @TablaRespuesta (noError,message) values (-1, 'Transacci�n err�nea. ')
    end

    select * from  @TablaRespuesta	
end

--6.2
CREATE PROCEDURE sp_registro_Tb_Tarjetas
	@Tarjeta varchar(16),
	@Monto numeric(19,2),
	@ConfirmacionWS varchar(100),
	@MontoComision Numeric(19,2),
	@ConfirmacionWSComision varchar(200),

	@IdUsuario int,
	@IdRegistraOrden int,
	@Token varchar(200),
	@Activo bit
as begin
    declare @idIdentiti int

	DECLARE @TablaRespuesta  TABLE (
        noError int,
        message varchar(50)
    )

    Insert into Tb_Tarjetas (FechaRegistro,FechaActualizacion,Tarjeta, Monto, ConfirmacionWS, MontoComision, ConfirmacionWSComision, IdUsuario, IdRegistraOrden, Token, Activo)
    VALUES (getdate(),getdate(),@Tarjeta,@Monto,@ConfirmacionWS,@MontoComision,@ConfirmacionWSComision,@IdUsuario,@IdRegistraOrden,@Token,@Activo)

    set @idIdentiti = SCOPE_IDENTITY()

    if (@idIdentiti > 0) begin
        insert into @TablaRespuesta (noError,message) values (@idIdentiti, 'Transacci�n exitosa.')
	end else Begin
        insert into @TablaRespuesta (noError,message) values (-1, 'Transacci�n err�nea. ')
    end

    select * from  @TablaRespuesta
end