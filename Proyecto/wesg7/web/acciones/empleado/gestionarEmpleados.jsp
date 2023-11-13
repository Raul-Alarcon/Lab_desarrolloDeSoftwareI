<%-- 
    Document   : gestioarEmpleados
    Created on : 1 nov 2023, 17:22:06
    Author     : Raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Empleados</title>
    </head>
    <body>
        <h1>Menu</h1>
        <div>
            <%@include file = "/menus/menuAdministrador.jsp" %>
        </div>
        <h1>Gestión de Empleados</h1>
        <h2>Listado de Empleados</h2>

        <h2>Conexion: ${mensaje_conexion}</h2>
        
        <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <a href="/wesg7?accion=AgregarEmpleado">Agregar empleado</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>idEmpleado</th>
                    <th>dui</th>
                    <th>iSSS</th>
                    <th>NombresEmpleado</th>
                    <th>ApellidosEmpleado</th>
                    <th>fechaNacimiento</th>
                    <th>telefono</th>
                    <th>eMail</th>
                    <th>idCargo</th>
                    <th>idDireccion</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaEmpleados}" var="item">
                    <tr>
                        <td><c:out value="${item.idEmpleado}" /></td>
                        <td><c:out value="${item.dui}" /></td>
                        <td><c:out value="${item.isss}" /></td>                        
                        <td><c:out value="${item.nombresEmpleado}" /></td>
                        <td><c:out value="${item.apellidosEmpleado}" /></td>
                        <td><c:out value="${item.fechaNacimiento}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.eMail}" /></td>                        
                        <td><c:out value="${item.idCargo}" /></td>
                        <td><c:out value="${item.idDireccion}" /></td>
                        <!-- opcion de modificar y eliminar -->
                        <td>
                            <form method="POST" action = "/wesg7/acciones/empleado/ModificarEmpleado.jsp">
                                <input type="hidden" name="ID_Empleado" value="${item.idEmpleado}" />
                                <input type="hidden" name="DUI_Empleado" value="${item.dui}" />
                                <input type="hidden" name="ISSS_Empleado" value="${item.isss}" />
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="apellidosEmpleado" value="${item.apellidosEmpleado}" />
                                <input type="hidden" name="fechaNacEmpleado" value="${item.fechaNacimiento}" />
                                <input type="hidden" name="telefonoEmpleado" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.eMail}" />
                                <input type="hidden" name="ID_Cargo" value="${item.idCargo}" />
                                <input type="hidden" name="ID_Direccion" value="${item.idDireccion}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action = "/wesg7/acciones/empleado/eliminarEmpleados.jsp">
                                <input type="hidden" name="ID_Empleado" value="${item.idEmpleado}" />
                                <input type="hidden" name="DUI_Empleado" value="${item.dui}" />
                                <input type="hidden" name="ISSS_Empleado" value="${item.isss}" />
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="apellidosEmpleado" value="${item.apellidosEmpleado}" />
                                <input type="hidden" name="fechaNacEmpleado" value="${item.fechaNacimiento}" />
                                <input type="hidden" name="telefonoEmpleado" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.eMail}" />
                                <input type="hidden" name="ID_Cargo" value="${item.idCargo}" />
                                <input type="hidden" name="ID_Direccion" value="${item.idDireccion}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
        <div>
            <%@include file = "/footer.html" %>
        </div>
    </body>
</html>
