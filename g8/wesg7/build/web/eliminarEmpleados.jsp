<%-- 
    Document   : eliminarEmpleados
    Created on : 4 nov. 2023, 10:27:57
    Author     : A21-PC11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Eliminar empleado</h1>

        <form method="POST" action="/wesg7/ServletPrincipal?accion=EliminarEmpleado">
            <div>
                <label>ID Empleado: ${param.ID_Empleado}</label><br>
                <label>DUI: ${param.DUI_Empleado}</label><br>
                <label>Número de afiliado ISSS: ${param.ISSS_Empleado}</label><br>
                <label>Nombres: ${param.nombresEmpleado}</label><br>
                <label>Apellidos: ${param.apellidosEmpleado}</label><br>
                <label>Fecha de nacimiento: ${param.fechaNacEmpleado}</label><br>
                <label>Teléfono: ${param.telefonoEmpleado}</label><br>
                <label>Correo: ${param.correo}</label><br>
                <label>ID Cargo: ${param.ID_Cargo}</label><br>
                <label>ID Dirección: ${param.ID_Direccion}</label>   
                <input type="hidden" name="ID_Empleado" id="ID_Empleado" value="${param.ID_Empleado}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el empleado?')" /><br><br>
            </div>
            <div>
                <a href="/wesg7/?accion=GestionEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
