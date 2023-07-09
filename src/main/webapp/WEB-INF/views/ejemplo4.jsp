<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Proyect Demo 6 - Ejemplo 4</title>
<link rel="stylesheet" href="./styles/ejemplo1.css">
</head>
<body>
    <div class="cabecera">
        <div class="cab1"></div>
        <div class="cap2"></div>
    </div>
    <div class="cuerpo">
        <div class="panel2">
            <div class="item"><p><span>Resultado Ejemplo 4:</span></p>
                 <c:if test="${ResultadoOperacion}"><p>Se han eliminado correctamente ${NumRegistros} registros.</p></c:if>
                 <c:if test="${!ResultadoOperacion}"><p style="color: red;">No se han eliminado ningún registro.</p></c:if>
            </div>
			 
            <div class="item"><p style="text-align:center;"><a href="./">Volver</a></p></div>
        </div>
    </div> 
    <div class="pie"><p><span>©</span> 2022 - Daniel Pérez Pérez</p></div>

</body>
</html>