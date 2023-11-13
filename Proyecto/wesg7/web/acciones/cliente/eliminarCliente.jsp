<%-- 
    Document   : eliminarCliente
    Created on : 4 nov. 2023, 10:27:57
    Author     : A21-PC11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EliminarCliente</title>
    </head>
    <body>
        <h1>Eliminar Cliente</h1>

        <form method="POST" action="/wesg7/ServletPrincipal?accion=EliminarCliente">
            <div>
                <label>ID Cliente: ${param.ID_Cliente}</label><br>
                <label>DUI: ${param.dui}</label><br>
                <label>Nombres: ${param.nombresCliente}</label><br>
                <label>Apellidos: ${param.apellidosCliente}</label><br>
                <label>Teléfono: ${param.telefono}</label><br>
                <label>Correo: ${param.eMail}</label><br>
                <label>ID DIreccion ${param.idDireccion}</label><br>
                <label>Distrito: ${param.distrito}</label><br>
                <label>Municipio: ${param.municipio}</label><br>  
                <label>Departamento ${param.depto}</label><br>  
                <label>Direccion ${param.direccion}</label><br>  
                <label>Referencia ${param.referencia}</label><br>  
                <label>Codigo Postal ${param.codPostal}</label><br>  
                <input type="hidden" name="ID_Cliente" id="ID_Cliente" value="${param.ID_Cliente}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el cliente?')" /><br><br>
            </div>
            <div>
                <a href="/wesg7/?accion=GestionClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
