--9.1
Select * from Tb_RegistraOrden RG
join Tb_CatTipoPago CTP on  RG.IdTipoPago = CTP.IdTipoPago
join Tb_CatTipoCuenta CTC on RG.IdTipoCuenta = CTC.IdTipoCuenta
join Tb_CatOperante CO on  RG.IdOperante = CO.IdOperante
join Tb_Cuentas C on RG.IdCuenta = C.IdCuenta
--9.2
Select *
from Tb_RegistraOrden RO
join Tb_CatTipoCuenta  CTC on CTC.IdTipoCuenta = RO.IdTipoCuenta
join Tb_Cuentas  C on C.IdCuenta = RO.IdCuenta
where RO.IdRegistraOrden Between 3 and 6
--9.3
Select C.IdCuenta,COUNT(1)
from Tb_RegistraOrden RO
join Tb_Cuentas C on C.IdCuenta = RO.IdCuenta
group by C.IdCuenta
--9.4
CREATE INDEX inx_IdCuenta_IdOrden ON Tb_RegistraOrden (IdCuenta,IdOrden);
--9.5
Select * into #Temporal from Tb_RegistraOrden
--9.6
CREATE LOGIN usr_prueba WITH PASSWORD    = N'12345'
CREATE USER usr_prueba FOR LOGIN usr_prueba