<%@page import="com.dgcactysv.funciones.Funciones"%>
<%@page import="com.dgcactysv.modelo.Vehiculo" %>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>
</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SUGPA</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="#">INICIO</a></li>
      <li><a href="/www.playasdeacarreo.gob/buscar">Buscar</a></li>
      <li><a href="/www.playasdeacarreo.gob/listarVehiculosPlaya">Listado Playas</a></li>
    </ul>  
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=request.getAttribute("usuario")%></a></li>
      <li><a href="inicio"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
    </ul>
  </div>
</nav>

<div class="container">
  <h2>Playa rio cuarto</h2>
  <p>Esta tabla representa los vehiculos en playa:</p>            
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
		 <th>MODIFICADO POR</th>        
      </tr>
    </thead>
    <tbody>
					<%
						List<Vehiculo> vehiculos = Funciones.getLstVehiculos();
						for (Vehiculo vehiculo : vehiculos) {
					%>
					<tr>
						<td><%=vehiculo.getRegistro()%></td>
						<td><%=vehiculo.getFecha()%></td>
						<td><%=vehiculo.getHora()%></td>
						<td><%=vehiculo.getDominio()%></td>
						<td><%=vehiculo.getMarca()%></td>
						<td><%=vehiculo.getModelo()%></td>
						<td><%=vehiculo.getMotivo()%></td>
						<td><%=vehiculo.getUsuario()%></td>
						
					</tr>
					<% } %>
    </tbody>
  </table>
  
  <h2>Playa Sarmiento</h2>
  <p>Esta tabla representa los vehiculos en playa:</p> 
  
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
      </tr>
    </thead>
    <tbody>
					<%
						for (Vehiculo vehiculo : vehiculos) {
					%>
					<tr>
						<td><%=vehiculo.getRegistro()%></td>
						<td><%=vehiculo.getFecha()%></td>
						<td><%=vehiculo.getHora()%></td>
						<td><%=vehiculo.getDominio()%></td>
						<td><%=vehiculo.getMarca()%></td>
						<td><%=vehiculo.getModelo()%></td>
						<td><%=vehiculo.getMotivo()%></td>
						
					</tr>
					<% } %>
    </tbody>
  </table>  
</div>


	
 <%@include file="footer.jsp" %>
</body>
</html>