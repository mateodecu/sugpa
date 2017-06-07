<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>

<!-- nav bar -->
  <meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<body>
	
<script>
function myFunction() {
    var txt;
    if (confirm("Presione aceptar para confirmar el egreso") == true) {
        txt = "You pressed OK!";
    } else {
        txt = "You pressed Cancel!";
    }
    document.getElementById("demo").innerHTML = txt;
}
</script>

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
  <h1>Egresar vehiculo</h1>
</div>
 

<form method="post" action="/www.playasdeacarreo.gob/bienvenido">

<div class="contenedor-login">
  
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Datos del egreso</h3>
      	
				<label for="registro">N°REGISTRO:</label> 
				<p class="boton-margen-inferior">
				<input class="input-ingresar" required name="registro" type="text"/></p>
				
				<label for="tipo">Tipo:</label>
				<p class="boton-margen-inferior">
				<select class="input-ingresar" id="tipo"  name="tipo">
					<option value="-1" selected="">Selecciona</option>
					<option value="titular">TITULAR</option>
					<option value="ca">CONDUCTOR AUTORIZADO</option>
					<option value="policia">FUERZA DE SEGURIDAD</option>
				</select></p>
				
				<label for="apellido">Apellido:</label> 
				<p class="boton-margen-inferior">
				<input class="input-ingresar" required name="apellido" type="text" /></p>
				
				<label for="nombre">Nombre:</label>
				<p class="boton-margen-inferior">
				<input class="input-ingresar" required name="nombre" type="text" /></p>
				
				<label for="dni">DNI:</label> 
				<p class="boton-margen-inferior">
				<input class="input-ingresar" required name="dni" type="text" /></p>
	
    </div>
    
    <div class="col-sm-4">
      <h3>Documentacion presentada</h3>
				<label for="dniDoc">Copia DNI: </label> 
				<p class="boton-margen-inferior">
				<input type="file" required name="dniDoc" /></p>
				 
				<label for="licencia">Copia Licencia: </label> 
				<p class="boton-margen-inferior">
				<input type="file" required name="licencia" /></p>
				
				<label for="cedula">Copia Cedula: </label> 
				<p class="boton-margen-inferior">				
				<input type="file" required name="cedula" /></p>
				 
				<label for="seguro">Copia Seguro: </label> 
				<p class="boton-margen-inferior">
				<input type="file" required name="seguro" /></p>
				 
				<label for="comunicado">Copia DGAI: </label> 
				<p class="boton-margen-inferior">
				<input type="file" required name="comunicado" /></p>
						
    </div>
    
    <div class="col-sm-4">
      <h3>Confirmar egreso</h3>   
            <label for="inputdefault">Observaciones:</label>
			<p class="boton-margen-inferior">
            <textarea name="observaciones" rows="4" cols="30"></textarea></p>
 
			<p class="boton-margen-inferior">
			<input onclick="myFunction()" class="boton input-ingresar" type="submit" name="cargar"	value="Cargar Egreso" /></p>
      </div>

</div>
  	
</div>

</div>
</form>

	<%@include file="footer.jsp"%>
</body>
</html>