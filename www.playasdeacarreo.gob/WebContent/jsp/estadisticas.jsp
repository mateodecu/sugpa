<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="headerIN.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	

<script>
	$(document).ready(function() {
		$("#datepicker_desde").datepicker();
	});
</script>
<script>
	$(document).ready(function() {
		$("#datepicker_hasta").datepicker();
	});
</script>

<script>
$(document).ready(function(){
    $("#hide").click(function(){
        $("img").hide();
    });
    $("#show").click(function(){
        $("img").show();
    });
});
</script>


<title>Playas de Acarreo DGCACTYSV:</title>
</head>
<body>

<div class="jumbotron text-center">
	<h1>Estadisticas</h1>
</div>

	<div class="row content">
		<div class="col-sm-8 text-left">
			<div class="contenedor-listaVehiculos">

				<!-- 
			<img class="imagen-grafico" src="img/Motos.jpg"><p> </p>
			<img class="imagen-grafico" src="img/Autos.jpg"><p> </p>
			<img class="imagen-grafico" src="img/Torta.jpg"><p> </p>
 -->
 			    <label for="tipo">Tipo: </label>
 			    <p> </p>
			    <select id="tipo" name="tipo">
			      <option value="moto">VEHICULO</option>
			      <option value="auto">MOTOVEHICULO</option>
			    </select>
			    <p> </p>
				<label for="motivo">Motivo: </label> 
				<p> </p>
				<select id="motivo"	name="motivo">
					<option value="todos">TODOS</option>
					<option value="doc">DOCUMENTACION</option>
					<option value="est">ESTACIONAMIENTO PROHIBIDO</option>
					<option value="placas">PLACAS DE DOMINIO</option>
					<option value="alcoholemia">ALCOHOLEMIA</option>
					<option value="abandonado">ABANDONADO</option>
					<option value="uber">UBER</option>
				</select> 
				<p> </p>
				
				<label for="texto-normal">Fecha desde: </label>
				<input	id="datepicker_desde" /> 
			
				<label for="texto-normal">Fecha hasta: </label>
				<input id="datepicker_hasta" />
		
				<button id="show">Mostrar Grafico</button>
				<button id="hide">Ocultar Grafico</button>
				
				<p> </p>
				
				<img class="imagen-grafico" display="none" src="img/Autos.jpg">
				
				
			</div>
		</div>

	</div>



</body>
</html>