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
      <li><a href="buscar">Buscar Vehiculo</a></li>
      <li><a href="cargar">Ingresar Vehiculo</a></li>
      <li><a href="egreso">Egresar Vehiculo</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=request.getAttribute("usuario")%></a></li>
      <li><a href="inicioo"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
    </ul>
  </div>
</nav>	
 


<div class="container">
  <h2>Playa rio cuarto</h2>
   
  <p>Lista de vehiculos en playa:</p>           
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
						
					</tr>
					<% } %>
    </tbody>
  </table>		
  
   <table class="table table-striped">
    <h2>Contabilizacion</h2> 
    <thead>
      <tr>
		 <th>TIPO</th>
		 <th>VEHICULOS</th>
		 <th>MOTOVEHICULOS</th>
		 <th>TOTAL</th>		 
      </tr>
    </thead>
    <tbody>
					<tr>
						<td>CANTIDAD</td>
						<td>60</td>
						<td>40</td>
						<td>100</td>
					</tr>
    </tbody>
  </table>
  
  
  <div class="col-md-8 text-center">
<p class="boton-margen-inferior">
    <a onclick="printPage()" class="btn">
      <span class="glyphicon glyphicon-print"></span> Imprimir Listado 
    </a>
</p>
</div>
	
 <%@include file="footer.jsp" %>
</body>
</html>