<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Stok</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>   
        <h1>Modificar Stok</h1>
        <form method="POST" action="/wesg7/ServletPrincipal?accion=ModificarStok">
            <div>
                <label>ID Stok</label>
                <input type="text" name="idStok" id="idStok" value="${param.idStok}" readonly /><br>
                <label>Cantidad Stok:</label>
                <input type="text" name="cantidadStok" id="cantidadStok" value="${param.cantidadStok}" required /><br><br>        
                <label>Descripcion:</label>
                <input type="text" name="descripcion" id="descripcion" value="${param.descripcion}" required /><br><br>        
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar stok?')" /><br><br> 
            </div>
            <div>
                <a href="/wesg7/?accion=GestionarStok">Regresar</a><br><br>
            </div>             
        </form>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
