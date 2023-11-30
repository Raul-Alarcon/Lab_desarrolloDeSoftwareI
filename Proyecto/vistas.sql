-- use tiendaElectronica

create view VistaDireccionCompleta as
select
    DIR.idDireccion,
    DIR.Linea1,
    DIR.Linea2,
	DIS.idDistrito,
    DIS.distrito,
    MUN.municipio,
    DEP.departamento,
    DEP.pais,
    DIR.CodigoPostal
from Direcciones DIR
	inner join Distritos DIS on DIR.idDistrito = DIS.idDistrito
	inner join Municipios MUN on DIS.idMunicipio = MUN.idMunicipio
	inner join Departamentos DEP on MUN.idDepartamento = DEP.idDepartamento;





create view VistaEmpleados as
select
    EMP.idEmpleado,
    EMP.dui,
    EMP.ISSS,
    EMP.NombresEmpleado,
    EMP.ApellidosEmpleado,
    EMP.fechaNacimiento,
    EMP.telefono,
    EMP.eMail,
	EMP.idCargo,
    CAR.cargo,
	EMP.idDireccion,
	DIR.Linea1 + ', ' + DIR.Linea2 + ', ' +
    DIR.Distrito + ', ' + DIR.Municipio + ', ' +
    DIR.Departamento + ', ' + DIR.Pais + ', ' +
	CAST(DIR.CodigoPostal AS char(5)) as DireccionCompleta
from Empleados EMP
	inner join Cargos CAR on EMP.idCargo = CAR.idCargo
	inner join VistaDireccionCompleta DIR on EMP.idDireccion = DIR.idDireccion;



create view VistaClientes as
select
    cli.IDCliente, 
	cli.nombresCliente, 
	cli.apellidosCliente, 
	cli.dui, 
	cli.telefono, 
	cli.eMail,
	cli.idDireccion,
	DIR.Linea1 + ', ' + DIR.Linea2 + ', ' +
    DIR.Distrito + ', ' + DIR.Municipio + ', ' +
    DIR.Departamento + ', ' + DIR.Pais + ', ' +
	CAST(DIR.CodigoPostal AS char(5)) as DireccionCompleta
from Clientes as cli
	inner join VistaDireccionCompleta DIR on cli.idDireccion = DIR.idDireccion;



create view VistaProveedores as
select
    pr.idProveedor, 
	pr.nombresContacto, 
	pr.ApellidosContacto,
	pr.telefono, 
	pr.eMail,
	pr.compania,
	pr.idDireccion,
	DIR.Linea1 + ', ' + DIR.Linea2 + ', ' +
    DIR.Distrito + ', ' + DIR.Municipio + ', ' +
    DIR.Departamento + ', ' + DIR.Pais + ', ' +
	CAST(DIR.CodigoPostal AS char(5)) as DireccionCompleta
from Proveedores as pr
	inner join VistaDireccionCompleta DIR on pr.idDireccion = DIR.idDireccion;