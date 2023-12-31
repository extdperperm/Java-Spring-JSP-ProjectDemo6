<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Proyect Demo 6 - Ejemplo 1</title>

<link rel="stylesheet" href="./styles/ejemplo1.css">
<!-- Configuraci�n b�sica datatable -->
<!-- https://datatables.net/examples/basic_init/zero_configuration.html -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="./js/ejemplo1.js"></script>

</head>
<body>
    <div class="cabecera">
        <div class="cab1"></div>
        <div class="cap2"></div>
    </div>
    <div class="cuerpo">
        <div class="panel2">
            <div class="item"><p><span>Resultado Ejemplo 1:</span></p></div>
			 <table id="example" class="display" style="width:100%">
			        <thead>
			            <tr>
			                <th>Id Tipo</th>
			                <th>Descripcion</th>
			                <th>F. Inserci&oacute;n</th>
			                <th>F. Modificaci&oacute;n</th>
			            </tr>
			        </thead>
			        <tbody>
				        <c:forEach begin="0" step="1" items="${TiposDePeliculas}" var="item">
				            <tr>
				                <td>${item.idTipoArticulo}</td>
				                <td>${item.descripcion}</td>
				                <td>${item.getFUltmodf()}</td>
				                <td>${item.getFInsercion()}</td>
				            </tr>
				        </c:forEach>
			        </tbody>
			        <tfoot>
			            <tr>
			                <th>Id Tipo</th>
			                <th>Descripcion</th>
			                <th>F. Inserci&oacute;n</th>
			                <th>F. Modificaci&oacute;n</th>
			            </tr>
			        </tfoot>
			    </table>
            <div class="item"><p style="text-align:center;"><a href="./">Volver</a></p></div>
        </div>
    </div> 
    <div class="pie"><p><span>�</span> 2022 - Daniel P�rez P�rez</p></div>

</body>
</html>