<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>
</head>
<body>
 <%@include file="header.jsp" %>
	
<h1>Egresar de vehiculo </h1>	

	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4 text-center">
			<div class="contenedor-login">
			<label for="registro">N°REGISTRO:</label>
			<input class="input-ingresar"  name="registro" type="text"/>
			<label for="apellido">Apellido</label>
			<input class="input-ingresar"  name="apellido" type="text"/>
			<label for="nombre">Nombre:</label>
			<input class="input-ingresar"  name="nombre" type="text"/>
			<label for="dni">DNI:</label>
			<input class="input-ingresar"  name="dni" type="text"/>
			<label for="tipo">Tipo</label>
			    <select id="tipo" name="tipo">
			      <option value="titular">TITULAR</option>
			      <option value="ca">CONDUCTOR AUTORIZADO</option>
			    </select>
			<label for="licencia">Copia Licencia: </label>    	
			<input type="file" name="licencia" />    			
			<label for="cedula">Copia Cedula: </label>    	
			<input type="file" name="cedula" />
			<label for="seguro">Copia Seguro: </label>    	
			<input type="file" name="seguro" />
			
			<p class="boton-margen-inferior"><input class="boton input-ingresar" type="submit" name="cargar" value="Cargar Egreso"/></p>
			</div>	
		</div>
	</div>
	
	 <%@include file="footer.jsp" %>
</body>
</html>