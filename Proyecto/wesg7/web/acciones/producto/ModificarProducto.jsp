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
        <title>Modificar Producto</title>
    </head>
    <body>
        <h1>Modificar producto</h1>
        <form method="POST" action="/wesg7/ServletPrincipal?accion=ModificarProducto">
            <div>
                <label>ID Producto:</label>
                <input type="text" name="idProducto" id="idProducto" value="${param.idProducto}" readonly /><br>
                <label>Nombre Producto:</label>
                <input type="text" name="nombreP" id="nombreP" value="${param.nombreP}" required /><br>
                <label>Descripción Producto:</label>
                <input type="text" name="descripcionProducto" id="descripcionProducto" value="${param.descripcionProducto}" required /><br>
                <label>Precio:</label>
                <input type="text" name="precio" id="precio" value="${param.precio}" required /><br>
                <label>ID Categoría:</label>
                <input type="text" name="idCategoria" id="idCategoria" value="${param.idCategoria}" required /><br>
                <label>ID Stok:</label>
                <input type="text" name="idStok" id="idStok" value="${param.idStok}" required /><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el Producto?')" /><br><br> 
            </div>
            <div>
                <a href="/wesg7/?accion=GestionProducto">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
