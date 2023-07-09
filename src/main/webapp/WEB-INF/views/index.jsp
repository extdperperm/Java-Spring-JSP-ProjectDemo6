<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Proyect Demo 6</title>
<!-- En las vistas .jsp, se puede usar la siguiente directiva para construir las rutas a los recursos estáticos:
		 ${pageContext.request.contextPath} 
     
     En este proyecto se ha optado por indicarlas de forma estática, pero si cambia en las controladoras la ubicación lógica y relativas mapeadas, podrían producirse
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
                              <div class="notabody"><p class="objetivos">- <b>C</b>onfiguración de JDBC.</p>
                              						<p class="objetivos">- <b>C</b>reación de una capa de conexión.</p>   
                              						<p class="objetivos">- <b>C</b>reación de una capa de datos (DAO).</p>
                              						<p class="objetivos">- <b>C</b>onocer la operativa básica con la base de datos.</p>      
                              </div>        
                            
            </div>
            <!-- Se muestran las propiedades del proyecto, pero esta vez, algunas han sido obtenidas desde ficheros de parametrización. -->
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
                              <div class="notabody"><p><span>Spring Framework:</span> Spring, versión 5.3.22. Módulos: Spring Web MVC</p>
                                                    <p><span>Javax servlet:</span> versión: 4.0.1</p>
                                                    <p><span>Mysql connector java (jdbc):</span> versión: 8.0.28</p>
                            </div>
            </div>    
            <div class="nota"><div class="notacab2"><p>Documentación y Sitios de Interés</p></div>
                              <div class="notabody"><p><a href="https://mvnrepository.com/" target="_blank">Ir a</a> Maven Repository</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/" target="_blank">Leer</a> Documentación de Spring</p>
                                                    <p><a href="https://proitcsolution.com.ve/inyeccion-de-dependencias-spring/" target="_blank">Leer</a> Inyección de dependencias con Spring</p>
                            </div>
            </div>         
        </div>
        <div class="panel2">
            <div class="item"><p><span>Ejemplo 1 - Consulta de datos:</span> Al hacer click en este ejemplo se realiza una consulta SQL a base de datos. Observe como se ha divido los diferentes niveles de complejidad: Configuración del jdbc (capa de conexión), Obtención y acomodación de los datos en un DAO (capa de datos), controladoras y modelos (capa de negocio) y vistas .jsp (capa de interfaz).<a href="./ejemplo1">Ver Ejemplo</a></p>			  
            </div>
            <div class="item"><p><span>Ejemplo 2 - Consulta de datos:</span> Al hacer click en este ejemplo se realiza una consulta SQL a base de datos. En este caso es interesante que observe como el DAO de Articulo cumple las relaciones del diagrama de clase; cada objeto articulo incorpora su relación con el tipo de artículo.<a href="./ejemplo2">Ver Ejemplo</a></p>			  
            </div>
            <div class="item"><p><span>Ejemplo 3 - Modificación de datos:</span>Se realiza un insert de los datos de un artículo indicado. Observe como sigue siendo el DAO el que gestiona y hace de intermediario entre la controladora y la capa de conexión.</p>	
                             
                              	<form name="F1" method="POST" action="./ejemplo3">
                              		<p><label>Cod. Barras: </label> <input type="number" name="codbarras" min="1" max="99999999" step="1" required/><p>
                              		<p><label>Nombre: </label> <input type="text" name="nombre" required/><p>
                              		<p><label>Descripción: </label> <input type="text" name="descripcion" required/><p>
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
            <div class="item"><p><span>Ejemplo 4 - Modificación de datos:</span> Al hacer click en este ejemplo se realiza lanza una operación de eliminación de todos los registros de una tabla. El método de la capa de conexión utilizado es el mismo que podría ser utilizado para ejecutar operaciones de tipo update.<a href="./ejemplo4">Ver Ejemplo</a></p>			  
            </div>
        </div>
    </div>
    <div class="pie"><p><span>©</span> 2022 - Daniel Pérez Pérez</p></div>

</body>
</html>