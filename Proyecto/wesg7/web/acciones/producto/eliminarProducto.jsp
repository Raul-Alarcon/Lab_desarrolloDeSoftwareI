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
        <title>Eliminar Producto</title>
    </head>
    <body>
        <h1>Eliminar producto</h1>

        <form method="POST" action="/wesg7/ServletPrincipal?accion=EliminarProducto">
            <div>
                <label>ID Producto: ${param.idProducto}</label><br>
                <label>Nombre Producto: ${param.nombreP}</label><br>
                <label>Descripción Producto: ${param.descripcionProducto}</label><br>
                <label>Precio: ${param.precio}</label><br>
                <label>ID Categoría: ${param.idCategoria}</label><br>
                <label>Categoría: ${param.categoria}</label><br>
                <label>ID Stock: ${param.idStok}</label><br>
                <label>Stock: ${param.stok}</label><br>
                <input type="hidden" name="idProducto" id="idProducto" value="${param.idProducto}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el proveedor?')" /><br><br>
            </div>
            <div>
                <a href="/wesg7/?accion=GestionProductor">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
