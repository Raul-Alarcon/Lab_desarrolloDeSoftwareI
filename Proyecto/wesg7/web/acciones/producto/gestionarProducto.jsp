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
        <title>Gestionar Productos</title>
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
        <h1>Gestión de Productos</h1>
        <h2>Listado de Productos</h2>

        <h2>Conexion: ${mensaje_conexion}</h2>
        
        <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <a href="/wesg7?accion=AgregarProducto">Agregar Productos</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Producto</th>
                    <th>Descripcion</th>
                    <th>Precio</th>
                    <th>Categoria</th>
                    <th>DescripcionCategoria</th>
                    <th>Stok</th>
                    <th>DetallesStok</th>
                    <th>Opciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaProductos}" var="item">
                    <tr>
                        <td><c:out value="${item.idProducto}" /></td>
                        <td><c:out value="${item.nombreP}" /></td>
                        <td><c:out value="${item.descripcionProducto}" /></td>
                        <td><c:out value="${item.precio}" /></td>
                        <td><c:out value="${item.categoria}" /></td>
                        <td><c:out value="${item.detalles}" /></td>
                        <td><c:out value="${item.cantidadStok}" /></td>
                        <td><c:out value="${item.descripcionStok}" /></td>

                        <!-- opcion de modificar y eliminar -->
                        <td>
                            <form method="POST" action = "/wesg7/acciones/producto/ModificarProducto.jsp">
                                <input type="hidden" name="idProducto" value="${item.idProducto}" />
                                <input type="hidden" name="nombreP" value="${item.nombreP}" />
                                <input type="hidden" name="descripcionProducto" value="${item.descripcionProducto}" />
                                <input type="hidden" name="precio" value="${item.precio}" />
                                <input type="hidden" name="idCategoria" value="${item.idCategoria}" />
                                <input type="hidden" name="idStok" value="${item.idStok}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action = "/wesg7/acciones/producto/eliminarProducto.jsp">
                                <input type="hidden" name="idProducto" value="${item.idProducto}" />
                                <input type="hidden" name="nombreP" value="${item.nombreP}" />
                                <input type="hidden" name="descripcionProducto" value="${item.descripcionProducto}" />
                                <input type="hidden" name="precio" value="${item.precio}" />
                                <input type="hidden" name="idCategoria" value="${item.idCategoria}" />
                                <input type="hidden" name="categoria" value="${item.categoria}" />
                                <input type="hidden" name="idStok" value="${item.idStok}" />
                                <input type="hidden" name="stok" value="${item.cantidadStok}" />
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
    <script>
        function abrirPopup() {
            var popup = document.getElementById('popup');
            var overlay = document.getElementById('overlay');

            if (popup.style.display === 'block') {
                popup.style.display = 'none';
                overlay.style.display = 'none';
            } else {
                popup.style.display = 'block';
                overlay.style.display = 'block';
            }
        }

        function mostrarDetallesEmpleado(ID_Proveedor,  nombresContacto, apellidosContacto, telefono, correo, compania, direccionCompleta) {
            document.getElementById('ID_Proveedor').textContent = ID_Proveedor;
            document.getElementById('nombresContacto').textContent = nombresContacto;
            document.getElementById('apellidosContacto').textContent = apellidosContacto;
            document.getElementById('telefono').textContent = telefono;
            document.getElementById('correo').textContent = correo;
            document.getElementById('compania').textContent = compania;
            document.getElementById('direccionCompleta').textContent = direccionCompleta;

            // Muestra el pop-up
            abrirPopup();
        }
    </script>
</html>
