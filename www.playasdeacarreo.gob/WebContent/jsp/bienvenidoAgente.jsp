<%@page import="com.dgcactysv.funciones.Funciones"%>
<%@page import="com.dgcactysv.modelo.Registro" %>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">


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
      <li><a href="buscar">Busqueda Avanzada</a></li>
      <li><a href="cargar">Ingresar Vehiculo</a></li>
      <li><a href="egreso">Egresar Vehiculo</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=request.getAttribute("usuario")%></a></li>
      <li><a href="inicio"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
    </ul>
  </div>
</nav>	
 

<div class="container">
  <h2>Playa rio cuarto</h2> <br>
  <div class="panel-group">

    <div class="panel panel-primary">
      <div class="panel-heading">Lista de vehiculos en playa</div>
      <div class="panel-body">
			
			  <table class="table table-striped table-bordered table-hover table-responsive" id="mydata">    
			    <thead>
			      <tr>
			      	 <th></th>
					 <th>REGISTRO</th>
					 <th>DOMINIO</th>
					 <th>MARCA</th>
					 <th>MODELO</th>
					 <th>MOTIVO</th>
					 <th>DESCRIPCION</th>
					 <th>ACTA C</th>
					 <th>ACTA Z</th>
					 <th>ACTA CONTRAVENCIONAL</th>
			      </tr>
			    </thead>
			
			  </table>		
  
		 <div class="col-md-8 text-center">
		<p class="boton-margen-inferior">
		    <a onclick="printPage()" class="btn">
		      <span class="glyphicon glyphicon-print"></span> Imprimir Listado 
		    </a>
		</p>
		</div>
		</div>
	</div>
</div>
</div>		
  
<!-- Modal -->
<div id="mostrarDetalle" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" >
  <div class="modal-dialog modal-lg">
  
   <!-- Modal content-->
     
     <div class="modal-content" >
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Detalles del registro</h4>
          
          
        </div>
        
        <div class="modal-body">
			  <table class="table table-striped table-bordered table-hover" >
			    <thead>
			      <tr>
					 <th>FECHA</th>
					 <th>HORA</th>
					 <th>ACTA CONTRAVENCIONAL</th>
					 <th>BOLETA DE CITACION</th>
					 <th>AGENTE LABRANTE</th>
			      </tr>
			    </thead>
			    
			
			    <tbody>
			
								<tr>
									<td>12/01/2017</td>
									<td>12:00</td>
									<td>123455</td>
									<td>Z0001244</td>
									<td>GALIAN MATIAS</td>
							</tr>
			    </tbody>
			  </table>
			  
			  	<table class="table table-striped table-bordered table-hover" >
			    <thead>
			      <tr>
					 <th>LEVANTADO EN</th>
					 <th>CHOFER DE GRUA</th>
					 <th>AGENTE DE PLAYA</th>
					 <th>NUMERO DE MOTOR</th>
					 <th>NUMERO DE CHASIS</th>
			      </tr>
			    </thead>
			    
			
			    <tbody>
			
								<tr>
									<td>AV 9 DE JULIO 100</td>
									<td>FUENTES</td>
									<td>PIZARRO</td>
									<td>14235235235</td>
									<td>12343423E</td>
							</tr>
			    </tbody>
			  </table>
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>



<div class="container">
  <h2>Contabilizacion</h2> <br>
  <div class="panel-group">

    <div class="panel panel-primary">
      <div class="panel-heading">Contabilizacion de vehiculos en playa</div>
      <div class="panel-body">
	
			<table class="table table-striped">
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
									<td><%=request.getAttribute("contabilizacionAutos")%></td>
									<td><%=request.getAttribute("contabilizacionMotos") %></td>
									<td><%=request.getAttribute("contabilizacion")%></td>
								</tr>
			    </tbody>
			</table>
		</div>
	</div>
</div>
</div>			
 
 
 
</body>
<%@include file="footer.jsp" %>
</html>