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


</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SUGPA</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="inicio">Inicio</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=request.getAttribute("usuario")%></a></li>
      <li><a href="inicioo"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
    </ul>
  </div>
</nav>	

<div class="tron">
<h1> Editar Registro:  </h1>
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
						<td><input type="text" name="dominio" value="<%=vehiculo.getDominio()%>"/></td>
						<td><input type="text" name="marca" value="<%=vehiculo.getMarca()%>"/></td>
						<td><input type="text" name="modelo" value="<%=vehiculo.getModelo()%>"/></td>
						<td><input type="text" name="motivo" value="<%=vehiculo.getMotivo()%>"/></td>
						<td><input type="text" name="motivo" value="<%=vehiculo.getPlaya()%>"/></td>
						<!-- 1531480324 -->
					</tr>
	
    </tbody>
  </table>            
  			<label for="inputdefault">Observaciones:</label>
			<p class="boton-margen-inferior">
  			<textarea name="observaciones" rows="4" cols="180"></textarea></p>
  			
  			<p class="boton-margen-inferior">
			<input onclick="myFunction()" class="boton input-ingresar" type="submit" name="Guardar" value="Guardar Cambios"/></p>
  </div>

	
	 <%@include file="footer.jsp" %>
</body>
</html>