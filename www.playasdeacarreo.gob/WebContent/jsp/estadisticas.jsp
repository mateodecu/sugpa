<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Estadisticas</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	


<script>
 $.datepicker.regional['es'] = {
 closeText: 'Cerrar',
 prevText: '< Ant',
 nextText: 'Sig >',
 currentText: 'Hoy',
 monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
 monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
 dayNames: ['Domingo', 'Lunes', 'Martes', 'Mi�rcoles', 'Jueves', 'Viernes', 'S�bado'],
 dayNamesShort: ['Dom','Lun','Mar','Mi�','Juv','Vie','S�b'],
 dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','S�'],
 weekHeader: 'Sm',
 dateFormat: 'dd/mm/yy',
 firstDay: 1,
 isRTL: false,
 showMonthAfterYear: false,
 yearSuffix: ''
 };
 $.datepicker.setDefaults($.datepicker.regional['es']);
$(function () {
$("#datepicker_desde").datepicker();
});
$(function () {
	$("#datepicker_hasta").datepicker();
	});
$(document).ready(function(){
    $("#hide").click(function(){
        $("#div1").hide();
    });
    $("#show").click(function(){
        $("#div1").show();
    });
});	
</script>


<title>Playas de Acarreo DGCACTYSV:</title>
</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SUGPA</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="inicioo">Inicio</a></li>
    </ul> 
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
<div class="contenedor-estadisticas">

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
  
  <div id="div1">				
<img  src="img/Autos.jpg" class="img-rounded" alt="Cinque Terre" width="957" height="569"></div>
<p> </p>
<div class="col-md-8">
	
<button id="show">Mostrar Grafico</button>
<button id="hide">Ocultar Grafico</button>
</div>	
  
</div> 
</div>
		
<div class="col-md-16 text-center">
<p class="boton-margen-inferior">
    <a onclick="printPage()" class="btn">
      <span class="glyphicon glyphicon-print"></span> Imprimir Grafico 
    </a>
</p>
</div>

<%@include file="footer.jsp" %>
</body>
 
</html>