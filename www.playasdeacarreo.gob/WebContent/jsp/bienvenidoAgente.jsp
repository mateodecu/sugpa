<%@page import="com.dgcactysv.funciones.Funciones"%>
<%@page import="com.dgcactysv.modelo.Registro" %>
<%@page import="com.dgcactysv.negocio.Facade" %>
<%@page import="com.dgcactysv.negocio.RegistroABM" %>
<%@page import="java.util.List"%>
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

<script>
function printPage() {
    window.print();
}
</script>

<script>
$(document).ready(function(){
    $('#mydata').DataTable();
});		
</script>
    
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
  <h2>Playa rio cuarto</h2>
   
  <p>Lista de vehiculos en playa:</p>           
  <table class="table table-striped table-bordered table-hover" id="mydata">
    <thead>
      <tr>
		 <th>REGISTRO</th>
		 <th>DOMINIO</th>
		 <th>MARCA</th>
		 <th>MODELO</th>
		 <th>MOTIVO</th>
		 <th>DESCRIPCION</th>
		 <th>ACTA DE COMPROBACION</th>
		 <th>DETALLE</th>
      </tr>
    </thead>
    

    <tbody>
					<%
						Facade facade= new Facade();
						RegistroABM facede= facade.getRegistroABM();
						List<Registro> vehiculos = facede.traerEnPlaya();
						for (Registro vehiculo : vehiculos) {
					%>
					<tr>
						<td><%=vehiculo.getRegistro()%></td>
						<td><%=vehiculo.getDominio()%></td>
						<td><%=vehiculo.getMarca()%></td>
						<td><%=vehiculo.getModelo()%></td>
						<td><%=vehiculo.getMotivo()%></td>
						<td><%=vehiculo.getDescripcion()%></td>
						<td><%=vehiculo.getActaDeComprobacion()%></td>	
						<td><img id="lupa" style="cursor: pointer;" src="img/detail.png" data-toggle="modal" data-target="#mostrarDetalle"/><%String dominio=vehiculo.getDominio();%></td>		
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
						<td><%=facede.ContablilizacionAutos()%></td>
						<td><%=facede.ContablilizacionMotos()%></td>
						<td><%=facede.Contablilizacion() %></td>
					</tr>
    </tbody>
  </table>
  
  <!-- Modal -->
 <button class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Large modal</button>

<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="mostrarDetalle">
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
					 <th>CHOFER DE GRUA</th>
					 <th>ACTA DE COMPROBACION</th>
					 <th>CHOFER DE GRUA</th>
					 <th>ACTA DE COMPROBACION</th>
			      </tr>
			    </thead>
			    
			
			    <tbody>
			
								<tr>
									<td>asdasda</td>
									<td>asdasda</td>
									<td>asdasda</td>
									<td>asdasda</td>
									<td>asdasda</td>
									<td>asdasda</td>
									<td>asdasda</td>
									<td>asdasda</td>
									<td>asdasda</td>
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



  <div class="col-md-8 text-center">
<p class="boton-margen-inferior">
    <a onclick="printPage()" class="btn">
      <span class="glyphicon glyphicon-print"></span> Imprimir Listado 
    </a>
</p>
</div>
</div>
	
 <%@include file="footer.jsp" %>
</body>
</html>