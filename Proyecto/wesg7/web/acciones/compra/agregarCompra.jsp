<%-- 
    Document   : agregarEmpleado
    Created on : 4 nov. 2023, 08:06:12
    Author     : A21-PC11
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Compra</title>
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nueva compra</h1>
        
        <form method="POST" action="/wesg7/ServletPrincipal?accion=AgregarCompra">
            <div>
                <label>ID Pedido:</label>
                <input type="text" id="idPedido" name="idPedido" placeholder="ID Pedido" required><br>
                <label>ID Producto:</label>
                <input type="text" id="idProducto" name="idProducto" placeholder="ID Producto" required><br>
                <label>Cantidad:</label>
                <input type="text" id="cantidad" name="cantidad" placeholder="Cantidad" required><br>
                <label>Precio Unidad:</label>
                <input type="text" id="precioUnidad" name="precioUnidad" placeholder="Precio Unidad" required><br>
                <label>Descuento Unidad:</label>
                <input type="text" id="descuentoUnidad" name="descuentoUnidad" placeholder="Descuento Unidad" required><br>
                <label>Comentarios:</label>
                <input type="text" id="comentarios" name="comentarios" placeholder="Comentarios" required><br>

              <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el Proveedor?')" /><br><br>
            </div><br>
            <div>
              <a href="/wesg7/?accion=GestionCompra">Volver al inicio</a>
            </div>
        </form>

    </body>
</html>
