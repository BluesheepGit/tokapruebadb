--15
create table Tb_RegistrosMasivos (numero int ,nombre varchar(50) )

Bulk insert Tb_RegistrosMasivos from 'C:\Users\usuarioejemplo\OneDrive\Documentos\docejemplo.csv' with (
	
	FORMAT = 'CSV',
    firstrow =2,
    fieldterminator ='|'
   
    )