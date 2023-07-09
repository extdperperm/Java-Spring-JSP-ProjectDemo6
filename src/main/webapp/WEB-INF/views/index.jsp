<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Proyect Demo 6</title>
<!-- En las vistas .jsp, se puede usar la siguiente directiva para construir las rutas a los recursos est�ticos:
		 ${pageContext.request.contextPath} 
     
     En este proyecto se ha optado por indicarlas de forma est�tica, pero si cambia en las controladoras la ubicaci�n l�gica y relativas mapeadas, podr�an producirse
     errores de acceso a los recursos (.js, .css) si no se actualizan manualmente.
-->
<link rel="stylesheet" href="./styles/index.css">

</head>
<body>
    <div class="cabecera">
        <div class="cab1"></div>
        <div class="cap2"></div>
    </div>
    <div class="cuerpo">
        <div class="panel1">
            <div class="nota"><div class="notacab1"><p>Proyecto</p></div>
                              <div class="notabody"><p style="text-align: center;"><span>#Spring Proyect Demo 6</span></p>
                            </div>
            </div>
            <div class="nota"><div class="notacab1"><p>Objetivos</p></div>
                              <div class="notabody"><p class="objetivos">- <b>C</b>onfiguraci�n de JDBC.</p>
                              						<p class="objetivos">- <b>C</b>reaci�n de una capa de conexi�n.</p>   
                              						<p class="objetivos">- <b>C</b>reaci�n de una capa de datos (DAO).</p>
                              						<p class="objetivos">- <b>C</b>onocer la operativa b�sica con la base de datos.</p>      
                              </div>        
                            
            </div>
            <!-- Se muestran las propiedades del proyecto, pero esta vez, algunas han sido obtenidas desde ficheros de parametrizaci�n. -->
            <div class="nota"><div class="notacab2"><p>Entorno de Desarrollo</p></div>
                              <div class="notabody"><p><span>Ide:</span> Eclipse, versi&oacute;n: 2022-06</p>
                                                    <p><span>Servidor:</span> Apache Tomcat, versi&oacute;n: 9</p>
                                                    <p><span>Jdk:</span> 17.1</p>
                            </div>
            </div>
            <div class="nota"><div class="notacab2"><p>Estandar de Desarrollo</p></div>
                              <div class="notabody"><p><span>Gestor de proyecto:</span> Maven, versi&oacute;n: 3.8.0</p>
                                                    <p><span>Id Artefacto maven:</span> maven-archetype-webapp, versi&oacute;n: 1.4</p>
                                                    <p><span>Faceta:</span> Dynamic Web Module, versi&oacute;n: 4.0</p>
                            </div>
            </div> 
            <div class="nota"><div class="notacab2"><p>Dependencias</p></div>
                              <div class="notabody"><p><span>Spring Framework:</span> Spring, versi�n 5.3.22. M�dulos: Spring Web MVC</p>
                                                    <p><span>Javax servlet:</span> versi�n: 4.0.1</p>
                                                    <p><span>Mysql connector java (jdbc):</span> versi�n: 8.0.28</p>
                            </div>
            </div>    
            <div class="nota"><div class="notacab2"><p>Documentaci�n y Sitios de Inter�s</p></div>
                              <div class="notabody"><p><a href="https://mvnrepository.com/" target="_blank">Ir a</a> Maven Repository</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/" target="_blank">Leer</a> Documentaci�n de Spring</p>
                                                    <p><a href="https://proitcsolution.com.ve/inyeccion-de-dependencias-spring/" target="_blank">Leer</a> Inyecci�n de dependencias con Spring</p>
                            </div>
            </div>         
        </div>
        <div class="panel2">
            <div class="item"><p><span>Ejemplo 1 - Consulta de datos:</span> Al hacer click en este ejemplo se realiza una consulta SQL a base de datos. Observe como se ha divido los diferentes niveles de complejidad: Configuraci�n del jdbc (capa de conexi�n), Obtenci�n y acomodaci�n de los datos en un DAO (capa de datos), controladoras y modelos (capa de negocio) y vistas .jsp (capa de interfaz).<a href="./ejemplo1">Ver Ejemplo</a></p>			  
            </div>
            <div class="item"><p><span>Ejemplo 2 - Consulta de datos:</span> Al hacer click en este ejemplo se realiza una consulta SQL a base de datos. En este caso es interesante que observe como el DAO de Articulo cumple las relaciones del diagrama de clase; cada objeto articulo incorpora su relaci�n con el tipo de art�culo.<a href="./ejemplo2">Ver Ejemplo</a></p>			  
            </div>
            <div class="item"><p><span>Ejemplo 3 - Modificaci�n de datos:</span>Se realiza un insert de los datos de un art�culo indicado. Observe como sigue siendo el DAO el que gestiona y hace de intermediario entre la controladora y la capa de conexi�n.</p>	
                             
                              	<form name="F1" method="POST" action="./ejemplo3">
                              		<p><label>Cod. Barras: </label> <input type="number" name="codbarras" min="1" max="99999999" step="1" required/><p>
                              		<p><label>Nombre: </label> <input type="text" name="nombre" required/><p>
                              		<p><label>Descripci�n: </label> <input type="text" name="descripcion" required/><p>
	                              	<p><label>Tipo: </label> <select name="tipo" required>
							                              	     <c:forEach begin="0" step="1" items="${TiposDePeliculas}" var="item">
																  	<option value="${item.idTipoArticulo}">${item.descripcion}</option>
																 </c:forEach>
															</select>
									</p>
                              		<br>
                              		<div><input type="submit" value="Insertar" /></div>
                              	</form>          	  
            </div>
            <div class="item"><p><span>Ejemplo 4 - Modificaci�n de datos:</span> Al hacer click en este ejemplo se realiza lanza una operaci�n de eliminaci�n de todos los registros de una tabla. El m�todo de la capa de conexi�n utilizado es el mismo que podr�a ser utilizado para ejecutar operaciones de tipo update.<a href="./ejemplo4">Ver Ejemplo</a></p>			  
            </div>
        </div>
    </div>
    <div class="pie"><p><span>�</span> 2022 - Daniel P�rez P�rez</p></div>

</body>
</html>