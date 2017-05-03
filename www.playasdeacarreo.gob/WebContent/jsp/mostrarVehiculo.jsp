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


<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-8 text-left"> 
		<h2><%=request.getAttribute("dominio")%></h2>
    </div>

  </div>
</div>


	
	 <%@include file="footer.jsp" %>
</body>
</html>