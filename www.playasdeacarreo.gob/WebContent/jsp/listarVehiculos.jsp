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
 
<div class="jumbotron text-center">	
<h1>Vehiculos más de 60 días </h1>	
</div>

<div class="container">
  <h2>Listado de vehiculos</h2>
  <p>Esta tabla representa los vehiculos en playa que superaron los 60 días de estadia.</p>            
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
		 <th>NOTIFICADO</th>        
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
						<td><%=vehiculo.getPlaya()%></td>						
						<td><input type="checkbox"></td>
						
					</tr>
					<% } %>
    </tbody>
  </table>

			<div class="col-md-2"></div><p> </p>
			<div class="col-md-8 text-center">			
			<form method="post" action="/www.playasdeacarreo.gob/actualizarListaSesenta"><input class="boton input-ingresar" type="submit" name="cargarNotificados" value="Cargar Notificados"/>
			</form>	</div>
				<BR>
			</div>	
		</div>

	</div>
	

	
</body>
</html>