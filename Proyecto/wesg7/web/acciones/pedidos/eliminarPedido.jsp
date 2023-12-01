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
        <title>Eliminar Pedido</title>
    </head>
    <body>
        <h1>Eliminar pedido</h1>

        <form method="POST" action="/wesg7/ServletPrincipal?accion=EliminarPedido">
            <div>
                <label>ID Pedido: ${param.idPedido}</label><br>
                <label>Fecha Pedido: ${param.fechaPedido}</label><br>
                <label>Fecha Recibido: ${param.fechaRecibido}</label><br>
                <label>Comentario: ${param.comentario}</label><br>
                <label>ID Proveedor: ${param.idProveedor}</label><br>
                <label>Proveedor: ${param.Proveedor}</label><br>
                <input type="hidden" name="idPedido" id="idPedido" value="${param.idPedido}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el proveedor?')" /><br><br>
            </div>
            <div>
                <a href="/wesg7/?accion=GestionPedido">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
