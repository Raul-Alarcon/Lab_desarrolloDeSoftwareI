<%-- 
    Document   : panelDeControl
    Created on : 7 oct. 2023, 10:16:19
    Author     : A21-PC11
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div><h1>Bienvenido al Sistema de gestion de la Tienda de Electronica 1.0</h1></div>
        <c:set var = "user" value = "${param.tfUser}" />
        <div><h2><strong>Bienvenido, <c:out value = "${user}" /></strong></h2></div>
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
