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
        <title>Agregar Pedido</title>
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
        <h1>Agregar nuevo pedido</h1>
        
        <form method="POST" action="/wesg7/ServletPrincipal?accion=AgregarPedido">
            <div>
                <label>Fecha Pedido:</label>
                <input type="date" name="fechaPedido" readonly/><br>
                <label>Fecha Recibido:</label>
                <input type="date" name="fechaRecibido" required/><br>
                <label>Comentario:</label>
                <input type="text" name="comentario" required /><br>
                <label>ID Proveedor:</label>
                <input type="text" name="idProveedor" required /><br>
              <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el Pedido?')" /><br><br>
            </div><br>
            <div>
              <a href="/wesg7/?accion=GestionPedido">Volver al inicio</a>
            </div>
        </form>

    </body>
</html>
