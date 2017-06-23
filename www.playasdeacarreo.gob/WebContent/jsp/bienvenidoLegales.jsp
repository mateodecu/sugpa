<%@page import="com.dgcactysv.funciones.Funciones"%>
<%@page import="com.dgcactysv.modelo.Registro" %>
<%@page import="java.util.ArrayList"%>
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
      <li><a href="listarVehiculosPlaya">Listado Playas</a></li>
    </ul>  
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=request.getAttribute("usuario")%></a></li>
      <li><a href="inicio"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
    </ul>
  </div>
</nav>

<div class="container">
  <h2>Playa rio cuarto</h2>
   
  <p>Lista de vehiculos en playa:</p>           
  <table class="table table-striped table-bordered table-hover" id="mydata2">
    <thead>
      <tr>
		 <th>REGISTRO</th>
		 <th>FECHA</th>
		 <th>HORA</th>
		 <th>DOMINIO</th>
		 <th>MARCA</th>
		 <th>MODELO</th>
		 <th>MOTIVO</th>
		 <th>DESCRIPCION</th>
		 <th>ACTA DE COMPROBACION</th>
      </tr>
    </thead>
    

    <tbody>
					<%
					ArrayList<Registro> vehiculos= (ArrayList<Registro>) request.getAttribute("lstRegistros");
					
					for (Registro vehiculo : vehiculos) {
					%>
					<tr>
						<td><%=vehiculo.getRegistro()%></td>
						<td><%=Funciones.traerFechaCorta4(vehiculo.getFechaEgr())%></td>
						<td><%=vehiculo.getHoraIng()%></td>
						<td><%=vehiculo.getDominio()%></td>
						<td><%=vehiculo.getMarca()%></td>
						<td><%=vehiculo.getModelo()%></td>
						<td><%=vehiculo.getMotivo()%></td>
						<td><%=vehiculo.getDescripcion()%></td>
						<td><%=vehiculo.getActaDeComprobacion()%></td>			
					</tr>
					<% } %>
    </tbody>
  </table>
  
</div>  	

</body>

 <%@include file="footer.jsp" %>
</html>