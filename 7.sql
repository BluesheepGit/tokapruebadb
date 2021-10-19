 create function Fn_ContarRegistrosPorIdCuenta
 (@IdCuenta int =0)
  returns int
  begin
   declare @valor int;
   select @valor =   count(*)  from Tb_RegistraOrden where IdCuenta=@IdCuenta 
   return @valor
  end;

  SELECT dbo.Fn_ContarRegistrosPorIdCuenta(1);

