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
	<h1>Departamento de Legales:  <%=request.getAttribute("usuario")%></h1>
	
	<h2>Que desea realizar?</h2>
  </div>		

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SUGPA</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">INICIO</a></li>
      <li><a href="/www.playasdeacarreo.gob/buscar">Buscar</a></li>
      <li><a href="/www.playasdeacarreo.gob/listarVehiculosPlaya">Listado Playas</a></li>
    </ul>
  </div>
</nav>

	
 <%@include file="footer.jsp" %>
</body>
</html>