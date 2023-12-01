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
        <title>Gestionar Compras</title>
        <style>
            /* Estilo para el contenedor del pop-up */
            .popup-container {
                display: none;
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                padding: 20px;
                background-color: #f0f0f0;
                border: 1px solid #ccc;
                z-index: 1;
            }

            /* Estilo para el fondo oscuro */
            .overlay {
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
                z-index: 0;
            }
        </style>
    </head>
    <body>
        <h1>Gestión de Compras</h1>
        <h2>Listado de Compras</h2>

        <h2>Conexion: ${mensaje_conexion}</h2>
        
        <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <a href="/wesg7?accion=AgregarCompra">Agregar compras</a><br><br>
        <%--
        fallido xd
        <form method="POST" action="/wesg7?accion=GestionCompra">
            <label>ID Pedido: ${param.idPedido}</label><br>
        </form>
        --%>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>ID Pedido</th>
                    <th>Producto</th>
                    <th>Cantidad</th>
                    <th>Precio Unitario</th>
                    <th>Descuento</th>
                    <th>Detalles</th>
                    <th>Opciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaCompras}" var="item">
                    <tr>
                        <td><c:out value="${item.IDCompra}" /></td>                     
                        <td><c:out value="${item.idpedido}" /></td>
                        <td><c:out value="${item.nombreP}" /></td>
                        <td><c:out value="${item.cantidad}" /></td>
                        <td><c:out value="${item.precioUnidad}" /></td>
                        <td><c:out value="${item.descuentoUnidad}" /></td>
                        <td><c:out value="${item.comentarios}" /></td>
                        <!-- opcion de modificar y eliminar -->
                        <td>
                            <form method="POST" action = "/wesg7/acciones/compra/ModificarCompra.jsp">
                                <input type="hidden" name="idCompra" value="${item.IDCompra}" />
                                <input type="hidden" name="idPedido" value="${item.idpedido}" />
                                <input type="hidden" name="idProducto" value="${item.idProducto}" />
                                <input type="hidden" name="cantidad" value="${item.cantidad}" />
                                <input type="hidden" name="precioUnidad" value="${item.precioUnidad}" />
                                <input type="hidden" name="descuentoUnidad" value="${item.descuentoUnidad}" />
                                <input type="hidden" name="comentarios" value="${item.comentarios}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action = "/wesg7/acciones/compra/eliminarCompra.jsp">
                                <input type="hidden" name="idCompra" value="${item.IDCompra}" />
                                <input type="hidden" name="idPedido" value="${item.idpedido}" />
                                <input type="hidden" name="idProducto" value="${item.idProducto}" />
                                <input type="hidden" name="nombreP" value="${item.nombreP}" />
                                <input type="hidden" name="cantidad" value="${item.cantidad}" />
                                <input type="hidden" name="precioUnidad" value="${item.precioUnidad}" />
                                <input type="hidden" name="descuentoUnidad" value="${item.descuentoUnidad}" />
                                <input type="hidden" name="comentarios" value="${item.comentarios}" />
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
