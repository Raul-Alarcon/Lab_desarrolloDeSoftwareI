<%-- 
    Document   : panelDeControl
    Created on : 7 oct. 2023, 10:16:19
    Author     : A21-PC11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel Administrador</title>
    </head>
    <body>
        <%-- directiva page--%>
        <% String usuario = request.getParameter("tfUser"); %>
        <div><h2><strong>Bienvenido, <%= usuario %></strong></h2></div>
        <%--directiva include--%>
        <br>
        <div><h3>Men&uacute; de opciones</h3></div>
        <div>
            <%@include file = "menuAdministrador.jsp" %>
        </div>
        <div>
            <%@include file = "footer.html" %>
        </div>
    </body>
</html>
