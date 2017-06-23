<%@page import="com.dgcactysv.funciones.Funciones"%>
<%@page import="com.dgcactysv.modelo.Registro" %>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
      <li><a href="inicioo"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
    </ul>
  </div>
</nav>	

<div class="tron">	
<h1>Vehiculos m�s de 60 d�as </h1>	
</div>

<div class="container">
  <h2>Listado de vehiculos</h2>
  <p>Esta tabla representa los vehiculos en playa que superaron los 60 d�as de estadia.</p>            
  <table class="table table-striped table-bordered table-hover table-responsive" id="mydata2">
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
					ArrayList<Registro> vehiculos = (ArrayList<Registro>) request.getAttribute("lstRegistros");
						for (Registro vehiculo : vehiculos) {
					%>
					<tr>
						<td><%=vehiculo.getRegistro()%></td>
						<td><%=Funciones.traerFechaCorta4(vehiculo.getFechaIng())%></td>
						<td><%=vehiculo.getHoraIng()%></td>
						<td><%=vehiculo.getDominio()%></td>
						<td><%=vehiculo.getMarca()%></td>
						<td><%=vehiculo.getModelo()%></td>
						<td><%=vehiculo.getMotivo()%></td>
						<td>Rio_cuarto</td>						
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