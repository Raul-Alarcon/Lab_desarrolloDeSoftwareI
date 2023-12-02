<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Cargo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
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
        <h1>Agregar nueva categoria</h1>

        <form method="POST" action="/wesg7/ServletPrincipal?accion=AgregarStok">
            <div>
                <!-- El ID de los Stok es autoincrementable -->
                <label>Cantidad Stok:</label>
                <input type="text" name="cantidadStok" id="cantidadStok" required /><br><br>                
                <label>Descripcion:</label>
                <input type="text" name="descripcion" id="descripcion" required /><br><br>                
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar stok?')" /><br><br>
            </div><br>
            <div>
                <a href="/wesg7/?accion=GestionarStok">Regresar</a>
            </div>            
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
