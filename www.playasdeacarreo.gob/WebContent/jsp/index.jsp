<%@page language="java"  contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
 <%@include file="header.jsp" %><!-- import="com.unla.datos.-usuario" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Playa de Acarreo D.G.C.A.T.y.S.V.</title>

</head>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="inicioo">SUGPA</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="inicioo"><span class="glyphicon glyphicon-user"></span> Ingresar</a></li>
      <li><a href="#"></a></li>
    </ul>
  </div>
</nav>	


<body>
<div class="container">
 	<form method="post" action="/www.playasdeacarreo.gob/bienvenido">
	<div class="row">	
		<div class="col-md-4"></div>
		<div class="col-md-4 text-center">
			<div class="contenedor-login">
				<label for="texto-normal">Usuario:</label>
				<p class="boton-margen-inferior">
				<input class="input-ingresar" autocomplete="off" required name="usuario" type="text"/></p>
				
				<label for="boton-margen-inferior texto-normal">Contraseña:</label>
				<p class="boton-margen-inferior">
				<input class="input-ingresar" name="clave" required type="password"/></p>
				
				<p class="boton-margen-inferior">
				<input class="boton input-ingresar" type="submit" name="ingresar" value="Ingresar"/></p>

			</div>
		</div>
		<div class="col-md-4"></div>		
	</div>
	</form>
</div>

</body>    
<%@include file="footer.jsp" %>	

</html>