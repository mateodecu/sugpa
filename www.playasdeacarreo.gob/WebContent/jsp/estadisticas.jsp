<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Estadisticas</title>
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

<script>
function printPage() {
    window.print();
}
</script>

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
	<h1>Estadisticas</h1>
</div>	

<div class="container">
  <h2>Graficador estadistico</h2>         
  <table class="table table-striped">
    <thead>
      <tr>
		 <th>TIPO</th>
		 <th>MOTIVO</th>
		 <th>FECHA DESDE</th>
		 <th>FECHA HASTA</th>    
      </tr>
    </thead>
    <tbody>

					<tr>
						<td>
						<p class="boton-margen-inferior">			    
						<select class="input-ingresar" id="tipo" name="tipo">
						  <option value="-1" selected="">Selecciona</option>
					      <option value="moto">VEHICULO</option>
					      <option value="auto">MOTOVEHICULO</option>
					    </select></p></td>
						<td><p class="boton-margen-inferior">
							<select class="input-ingresar" id="motivo" name="motivo">
									<option value="-1" selected="">Selecciona</option>
									<option value="todos">TODOS</option>
									<option value="doc">DOCUMENTACION</option>
									<option value="est">ESTACIONAMIENTO PROHIBIDO</option>
									<option value="placas">PLACAS DE DOMINIO</option>
									<option value="alcoholemia">ALCOHOLEMIA</option>
									<option value="abandonado">ABANDONADO</option>
									<option value="uber">UBER</option>
							</select></p>
						</td>
						<td><p class="boton-margen-inferior"><input class="input-ingresar"	id="datepicker_desde" /></p></td>
						<td><p class="boton-margen-inferior"><input class="input-ingresar" id="datepicker_hasta" /></p></td>
						
					</tr>
    </tbody>
  </table>
  
  				
<img  src="img/Autos.jpg" class="img-rounded" alt="Cinque Terre" width="857" height="469">
<p> </p>
<div class="col-md-8">	
<button id="show">Mostrar Grafico</button>
<button id="hide">Ocultar Grafico</button>
<p class="boton-margen-inferior"><input onclick="printPage()" class="boton input-ingresar" type="reset" name="imprimir" value="Imprimir Grafico"/></p>	
</div>
</div>				


</body>
</html>