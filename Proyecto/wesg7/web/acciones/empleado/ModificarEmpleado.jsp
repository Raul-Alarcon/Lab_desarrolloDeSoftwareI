<%-- 
    Document   : ModificarEmpleado
    Created on : 4 nov. 2023, 10:10:36
    Author     : A21-PC11
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Empleado</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <h1>Modificar empleado</h1>
        <form method="POST" action="/wesg7/ServletPrincipal?accion=ModificarEmpleado">
            <div>
                <label>ID Empleado:</label>
                <input type="text" name="ID_Empleado" id="ID_Empleado" value="${param.ID_Empleado}" readonly /><br>
                <label>DUI:</label>
                <input type="text" name="DUI_Empleado" id="DUI_Empleado" value="${param.DUI_Empleado}" required /><br>
                <label>Número de afiliado ISSS:</label>
                <input type="text" name="ISSS_Empleado" id="ISSS_Empleado" value="${param.ISSS_Empleado}" required /><br>
                <label>Nombres:</label>
                <input type="text" name="nombresEmpleado" id="nombresEmpleado" value="${param.nombresEmpleado}" required /><br>
                <label>Apellidos:</label>
                <input type="text" name="apellidosEmpleado" id="apellidosEmpleado" value="${param.apellidosEmpleado}" required /><br>
                <label>Fecha de nacimiento:</label>
                <input type="date" name="fechaNacEmpleado" id="fechaNacEmpleado" value="${param.fechaNacEmpleado}" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefonoEmpleado" id="telefonoEmpleado" value="${param.telefonoEmpleado}" required /><br>
                <label>Correo:</label>
                <input type="email" name="correo" id="correo" value="${param.correo}" required /><br>
                <label>ID Cargo:</label>
                <input type="text" name="ID_Cargo" id="ID_Cargo" value="${param.ID_Cargo}" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="ID_Direccion" id="ID_Direccion" value="${param.ID_Direccion}" required /><br><br>           
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div>
            <div>
                <a href="/wesg7/?accion=GestionEmpleados">Regresar</a><br><br>
            </div>             
        </form>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
