<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>
</head>
<body>
 <%@include file="header.jsp" %>
 <div class="jumbotron text-center">
	<h1>Agente de Playa:  <%=request.getAttribute("usuario")%></h1>
		
	<h2>Que desea realizar?</h2>
</div>		
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4 text-center">	
		<div class="contenedor-login">
			<form method="post" action="/www.playasdeacarreo.gob/buscar">
				<p class="boton-margen-inferior"><input class="boton input-ingresar" type="submit" name="Buscar" value="Buscar Vehiculo"/></p>
			</form>	
			
			<form method="post" action="/www.playasdeacarreo.gob/cargar">
				<p class="boton-margen-inferior"><input class="boton input-ingresar" type="submit" name="Cargar" value="Cargar Vehiculos"/>
			</form>
			<form method="post" action="/www.playasdeacarreo.gob/egreso">
			<p class="boton-margen-inferior"><input class="boton input-ingresar" type="submit" name="Egresar" value="Egresar Vehiculo"/></p>
			</form>	
		</div>
		</div>
	</div>		
 <%@include file="footer.jsp" %>
</body>
</html>