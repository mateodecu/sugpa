<%@page import="com.dgcactysv.funciones.Funciones"%>
<%@page import="com.dgcactysv.modelo.Vehiculo" %>
<%@page import="java.util.List"%>
<%@include file="header.jsp" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>
</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SUGPA</a>
    </div>

    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=request.getAttribute("usuario")%></a></li>
      <li><a href="inicio"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
    </ul>
  </div>
</nav>	

<div class="tron">	
<h1>Busqueda de vehiculos </h1>	
</div>

	<form method="post" action="/www.playasdeacarreo.gob/mostrarVehiculo">
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4 text-center">
			<div class="contenedor-login">
			<label for="dominio">Por dominio:</label>
			<p class="boton-margen-inferior">
			<input class="input-ingresar"  name="dominio" type="text"/></p>
			
			<p>o</p>
			<label for="acta">Por acta de comprobacion:</label>
			<p class="boton-margen-inferior">
			<input class="input-ingresar"  name="acta" type="text"/></p>	
			
			<p>o</p>
			<label for="acta">Por boleta de citacion:</label>
			<p class="boton-margen-inferior">
			<input class="input-ingresar"  name="boleta" type="text"/></p>
			
			<p>o</p>
			<label for="acta">Por acta de constatacion:</label>
			<p class="boton-margen-inferior">
			<input class="input-ingresar"  name="actaAlco" type="text"/></p>
			
			<p class="boton-margen-inferior"><input class="boton input-ingresar" type="submit" name="buscar" value="Buscar"/></p>
			</div>	
		</div>	
	</div>
	</form>


	
	 <%@include file="footer.jsp" %>
</body>
</html>