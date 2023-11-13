<%-- 
    Document   : gestioar
    Created on : 1 nov 2023, 17:22:06
    Author     : Raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Clientes</title>
    </head>
    <body>
        <h1>Gestión de Clientes</h1>
        <h2>Listado de Clientes</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <a href="/wesg7?accion=AgregarCliente">Agregar Cliente</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>idCliente</th>
                    <th>dui</th>
                    <th>nombresCliente</th>
                    <th>apellidosCliente</th>
                    <th>telefono</th>
                    <th>Correo</th>
                    <th>idDireccion</th>
                    <th>Distrito</th>
                    <th>Municipio</th>
                    <th>Departamento</th>
                    <th>Direccion</th>
                    <th>Referencia</th>
                    <th>CodigoPostal</th>
                    <th>Opciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaClientes}" var="item">
                    <tr>
                        <td><c:out value="${item.idCliente}" /></td>
                        <td><c:out value="${item.dui}" /></td>                       
                        <td><c:out value="${item.nombresCliente}" /></td>
                        <td><c:out value="${item.apellidosCliente}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.eMail}" /></td>                        
                        <td><c:out value="${item.idDireccion}" /></td>                        
                        <td><c:out value="${item.distrito}" /></td>
                        <td><c:out value="${item.municipio}" /></td>
                        <td><c:out value="${item.depto}" /></td>
                        <td><c:out value="${item.direccion}" /></td>
                        <td><c:out value="${item.referencia}" /></td>
                        <td><c:out value="${item.codPostal}" /></td>
                        <!-- opcion de modificar y eliminar -->
                        <td>
                            <form method="POST" action = "/wesg7/acciones/empleado/ModificarCliente.jsp">
                                <input type="hidden" name="ID_Cliente" value="${item.idCliente}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="nombresCliente" value="${item.nombresCliente}" />
                                <input type="hidden" name="apellidosCliente" value="${item.apellidosCliente}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="eMail" value="${item.eMail}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="hidden" name="distrito" value="${item.distrito}" />
                                <input type="hidden" name="municipio" value="${item.municipio}" />
                                <input type="hidden" name="depto" value="${item.depto}" />
                                <input type="hidden" name="direccion" value="${item.direccion}" />
                                <input type="hidden" name="referencia" value="${item.referencia}" />
                                <input type="hidden" name="codPostal" value="${item.codPostal}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action = "/wesg7/acciones/empleado/eliminarCliente.jsp">
                                <input type="hidden" name="ID_Cliente" value="${item.idCliente}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="nombresCliente" value="${item.nombresCliente}" />
                                <input type="hidden" name="apellidosCliente" value="${item.apellidosCliente}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="eMail" value="${item.eMail}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="hidden" name="distrito" value="${item.distrito}" />
                                <input type="hidden" name="municipio" value="${item.municipio}" />
                                <input type="hidden" name="depto" value="${item.depto}" />
                                <input type="hidden" name="direccion" value="${item.direccion}" />
                                <input type="hidden" name="referencia" value="${item.referencia}" />
                                <input type="hidden" name="codPostal" value="${item.codPostal}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
