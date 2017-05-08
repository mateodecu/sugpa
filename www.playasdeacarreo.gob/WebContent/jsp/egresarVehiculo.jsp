<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>
</head>
<body>
	<%@include file="header.jsp"%>
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
	

<div class="jumbotron text-center">
  <h1>Egresar vehiculo</h1>
</div>
 
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SUGPA</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Volver</a></li>
    </ul>
  </div>
</nav> 
  
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Datos del egreso</h3>
      	<div class="contenedor-login">
				<label for="registro">N°REGISTRO:</label> 
				<input class="input-ingresar" name="registro" type="text" />
				<p></p>
				<label for="tipo">Tipo:</label>
				<p></p>
				<select id="tipo" name="tipo">
					<option value="titular">TITULAR</option>
					<option value="ca">CONDUCTOR AUTORIZADO</option>
				</select>
				<p></p>
				<label for="apellido">Apellido:</label> 
				<input class="input-ingresar" name="apellido" type="text" />
				<label for="nombre">Nombre:</label>
				<input class="input-ingresar" name="nombre" type="text" />
				<label for="dni">DNI:</label> 
				<input class="input-ingresar" name="dni" type="text" />
				

		</div>		
    </div>
    
    <div class="col-sm-4">
      <h3>Documentacion presentada</h3>
      	<div class="contenedor-login">
				<label for="dniDoc">Copia DNI: </label> 
				<input type="file" name="dniDoc" /> 
				<label for="licencia">Copia Licencia: </label> 
				<input type="file" name="licencia" /> 
				<label for="cedula">Copia Cedula: </label> 
				<input type="file" name="cedula" /> 
				<label for="seguro">Copia Seguro: </label> 
				<input type="file" name="seguro" /> 
				<label for="comunicado">Copia DGAI: </label> 
				<input type="file" name="comunicado" />
		</div>			
    </div>
    
    <div class="col-sm-4">
      <h3>Confirmar egreso</h3>   
      <div class="contenedor-login">  
            <label for="inputdefault">Observaciones:</label>
            <textarea name="observaciones" rows="5" cols="20"></textarea>
				<p class="boton-margen-inferior">
				<input onclick="myFunction()" class="boton input-ingresar" type="submit" name="cargar"	value="Cargar Egreso" />
      </div>
  	</div>

</div>
  	
</div>



	<%@include file="footer.jsp"%>
</body>
</html>