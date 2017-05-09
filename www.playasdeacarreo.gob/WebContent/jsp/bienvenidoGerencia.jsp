<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@include file="header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>
</head>
<body>
 <div class="jumbotron text-center">
	<h1>Direccion General:  <%=request.getAttribute("usuario")%></h1>
</div>	

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SUGPA</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="#">INICIO</a></li>
      <li><a href="/www.playasdeacarreo.gob/buscar">Buscar</a></li>
      <li><a href="/www.playasdeacarreo.gob/verEstadisticas">Ver estadisticas</a></li>
      <li><a href="/www.playasdeacarreo.gob/listarVehiculosPlaya">Listado Playas</a></li>
      <li><a href="/www.playasdeacarreo.gob/listarVehiculos">M�s de 60 d�as</a></li>
      <li><a href="/www.playasdeacarreo.gob/egreso">Egresar vehiculo</a></li>
    </ul>
  </div>
</nav>



<div class="container">
  <h2>Estado Playas de Acarreo</h2>
  <p>Graficos de ocupacion en tiempo real de las playas</p>    

  <div class="row">
      <table class="table table-striped">
    <thead>
      <tr>
		 <th></th>
		 <th></th>
		 <th></th>
		 <th></th> 
      </tr>
    </thead>
    <tbody>
					<tr>
					<!--<td><img src="img/ocupacion.jpg" class="img-rounded" alt="Cinque Terre" width="304" height="236"> </td>  -->
						<td><img src="img/ocupacion.jpg" class="img-rounded" alt="Cinque Terre" width="284" height="216"> </td>
						<td><img src="img/ocupacion2.jpg" class="img-rounded" alt="Cinque Terre" width="284" height="216"> </td>
						<td><img src="img/ocupacion3.jpg" class="img-rounded" alt="Cinque Terre" width="284" height="216"> </td>
						<td><img src="img/ocupacion4.jpg" class="img-rounded" alt="Cinque Terre" width="284" height="216"> </td>
						
					</tr>
										

    </tbody>
    
  </table>
 </div>   
</div>
	
	
	<!--<div class="col-md-2"><img class="imagen-torta" src="img/Torta.jpg"></div>  -->	
 <%@include file="footer.jsp" %>
</body>
</html>