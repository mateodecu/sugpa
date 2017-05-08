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
<h1> Resultado Busqueda:  </h1>
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
    				<%if(parsear[0].equals(" ")==true){
						String mensaje="No se encontro el vehiculo";%>
					<h2><%=mensaje %></h2>
					<%} %>
</div>


	
	 <%@include file="footer.jsp" %>
</body>
</html>