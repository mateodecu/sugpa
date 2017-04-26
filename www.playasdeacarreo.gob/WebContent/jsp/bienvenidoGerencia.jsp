<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>
</head>
<body>
 <%@include file="header.jsp" %>
	<h1>Gerencia Operativa:  <%=request.getAttribute("usuario")%></h1>
	
	<h2>Que desea realizar?:</h2>
	
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4 text-center">	
		<div class="contenedor-login">
		
			<form method="post" action="/www.playasdeacarreo.gob/buscar">
				<p class="boton-margen-inferior"><input class="boton input-ingresar" type="submit" name="Buscar" value="Buscar Vehiculo"/></p>
			</form>	
					
			<form method="post" action="/www.playasdeacarreo.gob/verEstadisticas">
				<p class="boton-margen-inferior"><input class="boton input-ingresar" type="submit" name="Estadisticas" value="Estadisticas"/></p>
			</form>
			<form method="post" action="/www.playasdeacarreo.gob/listarVehiculosPlaya">
			<p class="boton-margen-inferior"><input class="boton input-ingresar" type="submit" name="ListPlaya" value="Listado Playa"/></p>
			</form>	
			<form method="post" action="/www.playasdeacarreo.gob/listarVehiculos">
			<p class="boton-margen-inferior"><input class="boton input-ingresar" type="submit" name="ListPlaya60R" value="Más de 60 días"/></p>
			</form>
		</div>
		<div class="col-md-4"></div>
	</div>
	</div>
	
	<!--<div class="col-md-2"><img class="imagen-torta" src="img/Torta.jpg"></div>  -->	
 <%@include file="footer.jsp" %>
</body>
</html>