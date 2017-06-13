<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>
</head>

<!-- jQuery library -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<body>


  <script>
  $( function() {
    var availableTags = ["ABARTH","ALFA ROMEO","ASTON MARTIN","AUDI","BMW","CHEVROLET","BENTLEY","CITROEN","DFSK","BYD","DACIA","DS","FERRARI","FIAT","FORD","HONDA","HYUNDAI","INFINITI","ISUZU","JAGUAR","JEEP","KIA","LADA","LAMBORGHINI","LANCIA","LAND ROVER","LEXUS","MAHINDRA","MASERATI","MAZDA","MERCEDES","MINI","MITSUBISHI","MORGAN","NISSAN","OPEL","SKODA","PEUGEOT","SMART","PORSCHE","RENAULT","ROLLS-ROYCE","SEAT","SSANGYONG","VOLKSWAGEN","SUBARU","SUZUKI","TATA","TESLA","TOYOTA","VOLVO" 
    ];
    $( "#marca" ).autocomplete({
      source: availableTags
    });
  } );
  </script>
<script>
  $( function() {
    var availableTags = ["abat","adiva","adly","aeon","aiyumo","aprilia","azel","benelli","big-bear-choppers","bimota","bmw","brammo",
                         "buell","bultaco","byebyke","cagiva","can-am","cfmoto","clipic","cpi","crs","daelim","derbi","ducati",
                         "e-max","fantic","f-b-mondial","garelli","gas-gas","generic","gilera","goccia","goes","govecs","hanway",
                         "harley-davidson","headbanger","hm","honda","hudson-boss","husaberg","husqvarna","hyosung","i-moto",
                         "indian","italjet","kawasaki","keeway","kenrod","ksr-moto","ktm","kymco","lambretta","lemev","leonart",
                         "linhai","lml","lotus","macbor","malaguti","mash","metrakit","mh","mini","montesa","motivas","moto-guzzi",
                         "moto-morini","mtr","mv-agusta","mx-motor","nimoto","oset","ossa","oxygen","peugeot","pgo","piaggio","polaris",
                         "polini","quadro","quantya","rav","rieju","riya","royal-enfield","scomadi","scorpa","scutum","sherco","smart",
                         "sumco","suzuki","sym","tacita","tgb","tm-racing","torrot","triumph","ural","vectrix","vespa","victory","volta",
                         "victory","volta","voxan","vyrus","xero","yamaha","zero","zanella","beta","motomel","mondial"
                         ];
    $( "#marcaM" ).autocomplete({
      source: availableTags
    });
  } );
</script>



<script>
function visibility(select) {
	   if(select.value==0){
		    document.getElementById('marcaO').style.display = "block";
		   } else{
		    document.getElementById('marcaO').style.display = "none";
		   }
	   if(select.value==1){
		    document.getElementById('marca').style.display = "block";
		   } else{
		    document.getElementById('marca').style.display = "none";
		   }
	   if(select.value==2){
		    document.getElementById('marcaM').style.display = "block";
		   } else{
		    document.getElementById('marcaM').style.display = "none";
		   }
		} 	
</script> 


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
      <li><a href="inicio"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
    </ul>
  </div>
</nav>

 <div class="tron">
	<h1>Ingresar Vehiculo: </h1>
</div>


<div class="container">
<div class="contenedor-ingresar">
<form method="post" action="inicioo">
  <div class="row">
    <div class="col-lg-4">
      <h3>Datos del vehiculo</h3>
			      				
  				<label for="motivo">Tipo:</label>
  				<p class="boton-margen-inferior">
			    <select class="input-ingresar" id="tipo" onchange="visibility(this)">
			      <option value="0" selected="">Selecciona</option>
			      <option value="1">Vehiculo</option>
			      <option value="2">Motovehiculo</option>
			    </select></p>
			    
				<label for="dominio">Dominio: </label>
				<p class="boton-margen-inferior">
				<input class="input-ingresar"  required name="dominio" type="text"/></p>
				
				<label  for="marca">Marca:</label>
				<p class="boton-margen-inferior">
				<input class="input-ingresar"  required name="marca" type="text" id="marcaO"/></p>
				<input class="input-ingresar"  required name="marca" type="text" id="marca" style="display:none;"/></p>
				<input class="input-ingresar"  required name="marca" type="text" id="marcaM" style="display:none;"/></p>
				
				<label for="modelo">Modelo:</label>
				<p class="boton-margen-inferior">
				<input class="input-ingresar"  required name="modelo" type="text"/></p>
			    
			    <label for="motivo">Motivo:</label>
			    <p class="boton-margen-inferior">
			    <select class="input-ingresar" id="motivo" name="motivo">
			      <option value="-1" selected="">Selecciona</option>
			      <option value="doc">DOCUMENTACION</option>
			      <option value="est">EST.PROHIBIDO</option>
			      <option value="placas">PLACAS DE DOMINIO</option>
			      <option value="alcoholemia">ALCOHOLEMIA</option>
			      <option value="abandonado">ABANDONADO</option>
			      <option value="uber">UBER</option>
			      <option value="uber">ESTUPEFACIENTES</option>
			    </select></p>
				<label for="chofer">N°Chasis:</label>
				<p class="boton-margen-inferior">
				<input class="input-ingresar"  required name="chasis" type="text"/></p>
				<label for="chofer">N°Motor:</label>
				<p class="boton-margen-inferior">
				<input class="input-ingresar"  required name="motor" type="text"/></p>							    
	</div>		
    
    <div class="col-lg-4">
      <h3>Datos de la infraccion</h3>
      	
			    <label for="acta">Acta contravencional:</label>
			    <p class="boton-margen-inferior">
				<input class="input-ingresar"  required name="acta" type="text"/></p>
				
			    <label for="actac">Acta de comprobacion:</label>
			    <p class="boton-margen-inferior">
				<input class="input-ingresar"  required name="actac" type="text"/></p>
					
			    <label for="boleta">Boleta de citación:</label>
			    <p class="boton-margen-inferior">
				<input class="input-ingresar"  required name="boleta" type="text"/></p>
				
				<label for="agente">Agente Labrante: </label>
				<p class="boton-margen-inferior">
				<input class="input-ingresar"  required name="agente" type="text"/></p>
				
				<label for="infractor">Infractor/Contraventor:</label>
				<p class="boton-margen-inferior">
				<input class="input-ingresar"  required name="infractor" type="text"/></p>
				
				<label for="chofer">Chofer de grua:</label>
				<p class="boton-margen-inferior">
				<input class="input-ingresar"  required name="chofer" type="text"/></p>
				
	</div>			
   
    
    <div class="col-lg-3">
      <h3>Confirmar ingreso</h3>     
      
      		<label for="dniDoc">Copia Inventario: </label> 
			<p class="boton-margen-inferior">
			<input type="file" required name="inventario" /></p>
			
            <label for="inputdefault">Observaciones:</label>
			<p class="boton-margen-inferior">
			<textarea name="observaciones" rows="5" cols="30"></textarea></p>
			
			<p class="boton-margen-inferior">
			<input onclick="mensajeConfirmaI()" class="boton input-ingresar" type="submit" name="Cargar" value="Cargar Registro"/></p>
     		
     </div>
     </div>
     </form>
	</div>
</div>
  
</body>

<%@include file="footer.jsp" %>
</html>