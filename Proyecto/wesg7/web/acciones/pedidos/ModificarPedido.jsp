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
        <title>Modificar Pedido</title>
    </head>
    <body>
        <h1>Modificar pedido</h1>
        <form method="POST" action="/wesg7/ServletPrincipal?accion=ModificarPedido">
            <div>
                <label>ID Pedido:</label>
                <input type="text" name="idPedido" value="${param.idPedido}" readonly /><br>
                <label>Fecha Pedido:</label>
                <input type="date" name="fechaPedido" value="${param.fechaPedido}" readonly/><br>
                <label>Fecha Recibido:</label>
                <input type="date" name="fechaRecibido" value="${param.fechaRecibido}" required/><br>
                <label>Comentario:</label>
                <input type="text" name="comentario" value="${param.comentario}" required /><br>
                <label>ID Proveedor:</label>
                <input type="text" name="idProveedor" value="${param.idProveedor}" required /><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el Pedido?')" /><br><br> 
            </div>
            <div>
                <a href="/wesg7/?accion=GestionPedido">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
