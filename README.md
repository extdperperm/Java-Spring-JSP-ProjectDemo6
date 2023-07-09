----------------------------------------------------------------------------------------------------------------------
                                            SpringProyectDemo6                                                      
                                                                                                                    
                                          Autor: Daniel Pérez Pérez                                                  
                                             Fecha: 16/10/2022                                                       
----------------------------------------------------------------------------------------------------------------------
DESCRIPCIÓN
----------------------------------------------------------------------------------------------------------------------
Demostración de acceso a datos con JDBC implementando la arquitectura en 4 capas (Interfaz, Negocio, Datos y Conexión).
Nota: Si se desea ejecutar con una versión de ApacheTomcat superior al 9, es necesario sustituir la dependencia javax por jakarta y actualizar en el web.xml la versión de la faceta (4.0 o superior)
----------------------------------------------------------------------------------------------------------------------
ESPECIFICACIÓN TÉCNICA DE DESARROLLO UTILIZADO
----------------------------------------------------------------------------------------------------------------------
Entorno de Desarrollo: Eclipse, versión: 2022-03 (4.23.0)
Servidor: Apache Tomcat, versión: 9
Jdk: OpenJdk, versión: 17.1
Gestor de proyecto: Maven, versión: 3.8.0
Id Artefacto maven: maven-archetype-webapp, versión: 1.4
Faceta:  Dynamic Web Module, versión: 4.0

----------------------------------------------------------------------------------------------------------------------
DEPENDENCIAS
----------------------------------------------------------------------------------------------------------------------
Spring Framework: Spring Web MVC v.5.3.22      
Javax servlet: v.4.0.1   
Jdbc MySql: 8.0.28             
----------------------------------------------------------------------------------------------------------------------
RECOMENDACIÓN PARA ABRIR EL PROYECTO EN ECLIPSE
----------------------------------------------------------------------------------------------------------------------
IMPORTANTE: Debe cargar en su base de datos mysql o mariadb la base de datos proporcionada en el fichero data-stockdb.sql. Además,
debe adaptar los parámetros de conexión en la clase MySqlConnection.

1º. Copie el directorio con el código en el directorio de su espacio de trabajo de eclipse.
2º. Desde eclipse, importe el proyecto haciendo click en File -> Open Projects from File System 
3º. En Import source, haciendo click en el botón "Directory..." seleccione la carpeta que contiene el proyecto.
4º. Haga click en Finish
5º. Se recomienda realizar un Maven Update (Click derecho sobre el proyecto Maven -> Update Project...
6º. Recompilar (salvo que tenga activado compilación automática).
7º. Ejecutar, por ejemplo haciendo click derecho sobre el proyecto -> Run As -> 1 Run on Server
