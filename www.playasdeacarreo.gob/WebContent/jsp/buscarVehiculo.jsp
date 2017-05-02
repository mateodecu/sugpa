<%@page import="com.dgcactysv.funciones.Funciones"%>
<%@page import="com.dgcactysv.modelo.Vehiculo" %>
<%@page import="java.util.List"%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>
</head>
<body>
 <%@include file="header.jsp" %>
	
<h1>Busqueda de vehiculos </h1>	

	<form method="post" action="/www.playasdeacarreo.gob/mostrarVehiculo">
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4 text-center">
			<div class="contenedor-login">
			<label for="dominio">Por dominio:</label>
			<input class="input-ingresar"  name="dominio" type="text"/>
			<p>o</p>
			<label for="acta">Por acta de comprobacion:</label>
			<input class="input-ingresar"  name="acta" type="text"/>	
			<p>o</p>
			<label for="acta">Por boleta de citacion:</label>
			<input class="input-ingresar"  name="boleta" type="text"/>
			<p>o</p>
			<label for="acta">Por acta de constatacion:</label>
			<input class="input-ingresar"  name="actaAlco" type="text"/>
			<p class="boton-margen-inferior"><input class="boton input-ingresar" type="submit" name="buscar" value="Buscar"/></p>
			</div>	
		</div>	
	</div>
	</form>


	
	 <%@include file="footer.jsp" %>
</body>
</html>