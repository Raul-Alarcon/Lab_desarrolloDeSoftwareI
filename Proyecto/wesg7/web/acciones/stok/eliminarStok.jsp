<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EliminarCliente</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <h1>Eliminar Categoria de Prodcuto</h1>
        
        <form method="POST" action="/wesg7/ServletPrincipal?accion=EliminarStok">
            <div>
              <label>ID Stok ${param.idStok}</label><br>
                <label>Cantidad Stok: ${param.cantidadStok}</label><br>
                <label>Descripcion: ${param.descripcion}</label><br>  
                <input type="hidden" name="idStok" id="idStok" value="${param.idStok}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el Stok?')" /><br><br>
            </div><br>
            <div>
              <a href="/wesg7/?accion=GestionarStok">Volver al inicio</a>
            </div>
        </form>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
