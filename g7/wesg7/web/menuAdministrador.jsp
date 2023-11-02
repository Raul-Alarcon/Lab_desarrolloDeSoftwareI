<%-- 
    Document   : menuAdministrador
    Created on : 7 oct. 2023, 10:27:07
    Author     : A21-PC11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MenuAdmin</title>
    </head>
    <body>
        <nav>
            <ul>
                <h3>SistemaWeb Tienda Electronica</h3>
                <li> <a href="/wesg7?accion=Login">LogIn</a></li>
                <li> <a href="/wesg7?accion=RegistroEmpleados">Registro de Empleados</a></li>
                <li> <a href="/wesg7?accion=RegistroClientes">Registro de Clientes</a></li>
                <li> <a href="/wesg7?accion=RegistroProveedores">Registro de Proveedores</a></li>
                <li> <a href="/wesg7?accion=RegistroProductos">Registro de Productos</a></li>
                <li> <a href="/wesg7?accion=RegistroPedidos">Registro de Pedidos</a></li>
                <li> <a href="/wesg7?accion=RegistroCompras">Registro de Compras</a></li>
                <%-- gestion --%>
                 <li><a href="/wesg7?accion=GestionEmpleados">GestionarEmpleados</a></li>
            </ul>
        </nav>
    </body>
</html>
