<%@page import="com.dgcactysv.funciones.Funciones"%>
<%@page import="com.dgcactysv.modelo.Vehiculo" %>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>
</head>
<body>
 <%@include file="header.jsp" %>
	
<h1>Listado de Vehiculos </h1>	

	<div class="row">
		<div class="col-md-2 text-center">
			<div class="contenedor-listaVehiculos">
			<div class="col-md-8 text-center"><h3>Playa Rio Cuarto:</h3></div>
				<BR>
				<table border="1">
					<tr>
						<th><div class="col-md-2 text-center">REGISTRO</div></th>
						<th><div class="col-md-2 text-center">FECHA</div></th>
						<th><div class="col-md-2 text-center">HORA</div></th>
						<th><div class="col-md-2 text-center">DOMINIO</div></th>
						<th><div class="col-md-2 text-center">MARCA</div></th>
						<th><div class="col-md-2 text-center">MODELO</div></th>
						<th><div class="col-md-2 text-center">MOTIVO</div></th>
					</tr>
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
				</table>
			<div class="col-md-2"></div>
				<BR>
				
			<div class="col-md-8 text-center"><h3>Playa Sarmiento:</h3></div>
				
				
				<BR>
				<table border="1">
					<tr>
						<th><div class="col-md-2 text-center">REGISTRO</div></th>
						<th><div class="col-md-2 text-center">FECHA</div></th>
						<th><div class="col-md-2 text-center">HORA</div></th>
						<th><div class="col-md-2 text-center">DOMINIO</div></th>
						<th><div class="col-md-2 text-center">MARCA</div></th>
						<th><div class="col-md-2 text-center">MODELO</div></th>
						<th><div class="col-md-2 text-center">MOTIVO</div></th>
					</tr>
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
				</table>
			<div class="col-md-2"></div>
				<BR>
				
				
				
			</div>	
		</div>

	</div>
	

	
</body>
</html>