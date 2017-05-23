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
    <ul class="nav navbar-nav">
      <li><a href="inicio">Inicio</a></li>
      <li><a href="buscar">Volver a buscar</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=request.getAttribute("usuario")%></a></li>
      <li><a href="inicioo"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
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
	 			<%Vehiculo vehiculo= new Vehiculo();
	 			vehiculo= (Vehiculo) request.getAttribute("vehiculo");
					 %>		 
					<tr>
						<td><%=vehiculo.getRegistro()%></td>
						<td><%=vehiculo.getFecha()%></td>
						<td><%=vehiculo.getHora()%></td>
						<td><%=vehiculo.getDominio()%></td>
						<td><%=vehiculo.getMarca()%></td>
						<td><%=vehiculo.getModelo()%></td>
						<td><%=vehiculo.getMotivo()%></td>
						<td><%=vehiculo.getPlaya()%></td>
						<td><%=vehiculo.getUsuario()%></td>
					</tr>
										
	
    </tbody>
    
  </table>
  
      				<%if(request.getAttribute("usuario").equals("Miraglia Walter")==true && vehiculo.getRegistro().equals("null")==false ){
						%>
							<table class="table table-striped">
							    <thead>
							      <tr>
									 <th></th>
									 <th></th>					    
							      </tr>
							    </thead>
							    <tbody>
												<tr>
													<td>
													<input class="boton input-ingresar" type="submit" name="verDoc" value="Ver Documentacion"/></td>													
													<td><form action="editarRegistro">
													<input class="boton input-ingresar" type="submit" name="editar" value="Editar Registro"/>	
													</form></td>					
												</tr>
							    </tbody>
							  </table>	
					  <table class="table table-striped">
					    <thead>
					      <tr>
							 <th><a href="img/dni.pdf" download>DNI</a></th>
							 <th><a href="img/licencia.pdf" download>LICENCIA</a></th>
							 <th><a href="img/cedula.pdf" download>CEDULA</a></th>
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
							 <th><a href="img/seguro.pdf" download>SEGURO</a></th>
							 <th><a href="img/dgai.pdf" download>DGAI</a></th>
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
					
					<%if(request.getAttribute("usuario").equals("Decurgez Mateo")==true && vehiculo.getRegistro().equals("null")==false){%>
						<p class="boton-margen-inferior">
						<input class="boton input-ingresar" type="submit" name="editar" value="Editar Registro"/></p>	
					<%} %>

					<%if(request.getAttribute("usuario").equals("Pizarro Maximiliano")==true && vehiculo.getRegistro().equals("null")==false){%>
					<form action="egreso">
						<p class="boton-margen-inferior">
						<input class="boton input-ingresar" type="submit" name="egresar" value="Egresar vehiculo"/></p>	
					</form>	
					<%} %>
					
					<%if(request.getAttribute("usuario").equals("Pietrafesa Sergio")==true && vehiculo.getRegistro().equals("null")==false){%>
					<form action="egreso">
						<p class="boton-margen-inferior">
						<input class="boton input-ingresar" type="submit" name="egresar" value="Egresar vehiculo"/></p>	
					</form>	
					<%} %>
					
    				<%if(vehiculo.getRegistro().equals("null")==true){
						String mensaje="No se encontro el vehiculo";%>
					<h2><%=mensaje %></h2>
					<%} %>
</div>


	
	 <%@include file="footer.jsp" %>
</body>
</html>