<%-- 
    Document   : Index2
    Created on : Oct 12, 2019, 9:28:31 PM
    Author     : kangaru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>UyTube</title>
    </head>
    <body>
        <div class="wrap">
	   <div class="search">
	      	<input type="text" class="searchTerm" placeholder="Buscar">
	      	<button type="submit" class="searchButton" >
	      		Buscar
	     	</button>
	   </div>
	</div>
	<div class="titulos">
		<h4 class="linea">-</h4>
                <a href="MiPerfil.jsp" target="iFrame" class="derecha"><img src="https://pbs.twimg.com/media/Do4L0ULXUAAbQLZ.png" class="imgPerfil">
                    <%
                        HttpSession sesion = request.getSession(false);
                        if (sesion != null) {
                            String user = (String) sesion.getAttribute("username");%>
                    <h2 class="derecha"><%=user%></h2>
                    <%} else {%>
                    <a href="Login.html">
                        <input type="button" value="Iniciar Sesión"/>
                    </a>
                    <%}%>
                </a>
                <a href="Index2.jsp" class="izquierda"><img src="logo.png" class="izquierda"></a>
	</div>
        <ul>
          <li><a href="index.jsp?value=todos" target="iFrame" class="a1">Inicio</a></li>  
	  <li><a href="MiPerfil.jsp" target="iFrame" class="a1">Mi Perfil</a></li>
	  <li><a href="AltaVideo.jsp" target="iFrame">Subir Video</a></li>
	  <li><a href="contact.asp" class="a1">Ver Videos</a></li>
          <li><a href="AltaListaDR.jsp" target="iFrame">+ Crear lista</a></li>
	  <li><a href="about.asp">Ver más tarde</a></li>
	  <li><a href="about.asp">Me gusta</a></li>
	  <li><a href="about.asp" class="a1">Música para estudiar</a></li>
	  <li><a href="musica.jsp?value=Musica" target="iFrame">Música</a></li>
	  <li><a href="musica.jsp?value=Juegos" target="iFrame">Juegos</a></li>
	  <li><a href="musica.jsp?value=Deportes" target="iFrame" class="a1">Deportes</a></li>
	  <li><a href="Login.html">Salir</a></li>
	</ul>
        <div class="Iframes">
            <iframe id="iFrame" name="iFrame" width="98%" height="700" src="index.jsp" ></iframe>
        </div>
    </body>
</html>
