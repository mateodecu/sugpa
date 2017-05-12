<%@page import="com.dgcactysv.funciones.Funciones"%>
<%@page import="com.dgcactysv.modelo.Vehiculo" %>
<%@page import="java.util.List"%>
<%@include file="header.jsp" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>

<script>
	$(document).ready(function(){
	    $("#verDoc").click(function(){
	        $("object").hide();
	    });
	    $("#verDoc").click(function(){
	        $("object").show();
	    });
	});

</script>

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
<h1> Resultado Busqueda:  </h1>
</div>

<div class="container">      
  <table class="table table-striped">
    <thead>
      <tr>
		 <th>REGISTRO</th>
		 <th>FECHA</th>
		 <th>HORA</th>
		 <th>DOMINIO</th>
		 <th>MARCA</th>
		 <th>MODELO</th>
		 <th>MOTIVO</th>
		 <th>PLAYA</th>
		 <th>MODIFICADO POR</th>     
      </tr>
    </thead>
    <tbody>
					<%String dominio= ""+request.getAttribute("dominio");
					String parsear[]=dominio.split(";");
					 %>		 
					<tr>
						<td><%=parsear[0]%></td>
						<td><%=parsear[1]%></td>
						<td><%=parsear[2]%></td>
						<td><%=parsear[3]%></td>
						<td><%=parsear[4]%></td>
						<td><%=parsear[5]%></td>
						<td><%=parsear[6]%></td>
						<td><%=parsear[7]%></td>
						<td><%=parsear[8]%></td>	
						
					</tr>
										

    </tbody>
    
  </table>
  
      				<%if(request.getAttribute("usuario").equals("Walter Miraglia")==true && parsear[0].equals(" ")==false ){
						%>
					<p class="boton-margen-inferior">
					<input class="boton input-ingresar" type="submit" name="verDoc" value="Ver Documentacion"/></p>
					<p class="boton-margen-inferior">
					<input class="boton input-ingresar" type="submit" name="editar" value="Editar Registro"/></p>	
							
					  <table class="table table-striped">
					    <thead>
					      <tr>
							 <th>DNI</th>
							 <th>LICENCIA</th>
							 <th>CEDULA</th>
					      </tr>
					    </thead>
					    <tbody>
										<tr>
											<td><object width="400" height="400" data="img/dni.pdf"></object></td>
											<td><object width="400" height="400" data="img/licencia.pdf"></object></td>
											<td><object width="400" height="400" data="img/cedula.pdf"></object></td>
										</tr>
					    </tbody>
					  </table>
					  
					  	<table class="table table-striped">
					    <thead>
					      <tr>
							 <th>SEGURO</th>
							 <th>DGAI</th>
					      </tr>
					    </thead>
					    <tbody>
										<tr>
											<td><object width="400" height="400" data="img/seguro.pdf"></object></td>
											<td><object width="400" height="400" data="img/dgai.pdf"></object></td>
										</tr>
					    </tbody>
					  </table>
					  
					  
					
					<%} %>
					
					<%if(request.getAttribute("usuario").equals("Decurgez Mateo")==true && parsear[0].equals(" ")==false){%>
						<p class="boton-margen-inferior">
						<input class="boton input-ingresar" type="submit" name="editar" value="Editar Registro"/></p>	
					<%} %>
					
    				<%if(parsear[0].equals(" ")==true){
						String mensaje="No se encontro el vehiculo";%>
					<h2><%=mensaje %></h2>
					<%} %>
</div>


	
	 <%@include file="footer.jsp" %>
</body>
</html>