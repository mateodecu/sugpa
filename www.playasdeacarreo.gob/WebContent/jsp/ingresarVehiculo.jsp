<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>
</head>
<body>
 <%@include file="header.jsp" %>
	<h1>Ingresar Vehiculo: </h1>


	<form method="post" action="/www.playasdeacarreo.gob/bienvenido">
	<div class="row">	
		<div class="col-md-4"></div>
		<div class="col-md-4 text-center">
		<div class="contenedor-listaVehiculos">
				<label for="dominio">Dominio: </label>
				<input class="input-ingresar"  required name="dominio" type="text"/>
				<label for="marca">Marca:</label>
				<input class="input-ingresar"  required name="marca" type="text"/>	
				<label for="modelo">Modelo:</label>
				<input class="input-ingresar"  required name="modelo" type="text"/>	
			    <p></p> 
			    <label for="tipo">Tipo</label>
			    <select id="tipo" name="tipo">
			      <option value="moto">MOTO</option>
			      <option value="auto">AUTO</option>
			      <option value="colectivo">COLECTIVO</option>
			    </select>
			    <p> </p>		
			    <label for="motivo">Motivo:</label>
			    <select id="motivo" name="motivo">
			      <option value="doc">DOCUMENTACION</option>
			      <option value="est">ESTACIONAMIENTO PROHIBIDO</option>
			      <option value="placas">PLACAS DE DOMINIO</option>
			      <option value="abandonado">ABANDONADO</option>
			      <option value="uber">UBER</option>
			    </select>
			    <p> </p>
			    <label for="acta">Acta contravencional:</label>
				<input class="input-ingresar"  required name="acta" type="text"/>	
			    <label for="actac">Acta de comprobacion:</label>
				<input class="input-ingresar"  required name="actac" type="text"/>	
			    <label for="boleta">Boleta de citación:</label>
				<input class="input-ingresar"  required name="boleta" type="text"/>
				<label for="agente">Agente Labrante: </label>
				<input class="input-ingresar"  required name="agente" type="text"/>	
				<label for="infractor">Infractor/Contraventor:</label>
				<input class="input-ingresar"  required name="infractor" type="text"/>
				<label for="chofer">Chofer de grua:</label>
				<input class="input-ingresar"  required name="chofer" type="text"/>	
				<p class="boton-margen-inferior"><input class="boton input-ingresar" type="submit" name="Cargar" value="Cargar Registro"/></p>
	
		</div>
		</div>
	</div>
	</form>
	
	 <!-- include file="footer.jsp"  -->
</body>
</html>