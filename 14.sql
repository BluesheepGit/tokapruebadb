--14
CREATE VIEW View_Cuentas_And_Beneficiarios
AS
Select
B.Id as BeneficiarioId,
B.IdCuenta as BeneficiarioIdCuenta,
B.NombreBeneficiario as BeneficiarioNombreBeneficiario,
B.CorreoElectronico as BeneficiarioCorreoElectronico,
B.RFC as BeneficiarioRFC,
B.CURP as BeneficiarioCURP,
B.FechaRegistro as BeneficiarioFechaRegistro,
B.FechaActualizacion as BeneficiarioFechaActualizacion,
B.Status   as BeneficiarioStatus,
C.IdCuenta as CuentaIdCuenta,
C.IdClabe as CuentaIdClabe,
C.ClabeInterbancaria as CuentaClabeInterbancaria,
C.Etiqueta as CuentaEtiqueta,
C.MontoMaximo as CuentaMontoMaximo,
C.IdUsuario as CuentaIdUsuario,
C.FechaRegistro as CuentaFechaRegistro,
C.FechaActualizacion as CuentaFechaActializacion,
C.Status as CuentaStatus,
C.HashCuenta as CuentaHashCuenta,
C.TipoCuenta as CuentaTipoCuenta
from TB_Cuentas C
    Join Tb_Beneficiarios B on C.IdCuenta = B.IdCuenta