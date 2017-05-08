<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playas de Acarreo DGCACTYSV:</title>
</head>

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>


<body>
 <%@include file="header.jsp" %>
 <div class="jumbotron text-center">
	<h1>Ingresar Vehiculo: </h1>
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

<form method="post" action="/www.playasdeacarreo.gob/bienvenido">

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Datos del vehiculo</h3>
      	<div class="contenedor-login">
			      				
  				<label for="motivo">Tipo:</label>
  				<p> </p>
			    <select class="input-ingresar" id="tipo" name="motivo">
			      <option value="-1" selected="">Selecciona</option>
			      <option value="vehiculo">Vehiculo</option>
			      <option value="motovehiculo">Motovehiculo</option>
			    </select>
				<p> </p>
				<label for="dominio">Dominio: </label>
				<p> </p>
				<input class="input-ingresar"  required name="dominio" type="text"/>
				<p> </p>
				<label  for="marca">Marca:</label>
				<p> </p>
					<select class="input-ingresar" id="marca" name="marca">
					<option value="-1" selected="">Selecciona</option>				
					<option value="38">ABARTH</option>
					<option value="7">ALFA ROMEO</option>
					<option value="49">ALFA ROMEO (FIAT)</option>
					<option value="129">ASTON MARTIN</option>
					<option value="4">AUDI</option>
					<option value="3">BMW</option>
					<option value="10">CHEVROLET</option>
					<option value="24">BENTLEY</option>
					<option value="12">CITROEN</option>
					<option value="50">DFSK</option>
					<option value="51">BYD</option>
					<option value="45">DACIA</option>
					<option value="33">DS</option>
					<option value="459">FERRARI</option>
					<option value="44">FERRARI (FCA)</option>
					<option value="35">FIAT</option>
					<option value="37">FIAT (FIAT)</option>
					<option value="25">FORD</option>
					<option value="20">HONDA</option>
					<option value="22">HYUNDAI</option>
					<option value="40">INFINITI</option>
					<option value="47">ISUZU</option>
					<option value="16">JAGUAR</option>
					<option value="14">JEEP</option>
					<option value="39">JEEP (FIAT)</option>
					<option value="30">KIA</option>
					<option value="27">LADA</option>
					<option value="41">LAMBORGHINI</option>
					<option value="34">LANCIA</option>
					<option value="36">LANCIA (FIAT)</option>
					<option value="8">LAND ROVER</option>
					<option value="46">LEXUS</option>
					<option value="52">MAHINDRA</option>
					<option value="42">MASERATI</option>
					<option value="26">MAZDA</option>
					<option value="1">MERCEDES</option>
					<option value="19">MINI</option>
					<option value="15">MITSUBISHI</option>
					<option value="130">MORGAN</option>
					<option value="28">NISSAN</option>
					<option value="17">OPEL</option>
					<option value="13">SKODA</option>
					<option value="18">PEUGEOT</option>
					<option value="31">SMART</option>
					<option value="2">PORSCHE</option>
					<option value="21">RENAULT</option>
					<option value="23">ROLLS-ROYCE</option>
					<option value="5">SEAT</option>
					<option value="29">SSANGYONG</option>
					<option value="6">VOLKSWAGEN</option>
					<option value="43">SUBARU</option>
					<option value="32">SUZUKI</option>
					<option value="48">TATA</option>
					<option value="462">TESLA</option>
					<option value="11">TOYOTA</option>
					<option value="9">VOLVO</option>
					<option value="9">Otros</option>
					</select>	
				<p> </p>				
				<label for="modelo">Modelo:</label>
				<p> </p>
				<input class="input-ingresar"  required name="modelo" type="text"/>	
				<p> </p>
			    <label for="motivo">Motivo:</label>
			    <p> </p>
			    <select class="input-ingresar" id="motivo" name="motivo">
			      <option value="-1" selected="">Selecciona</option>
			      <option value="doc">DOCUMENTACION</option>
			      <option value="est">EST.PROHIBIDO</option>
			      <option value="placas">PLACAS DE DOMINIO</option>
			      <option value="abandonado">ABANDONADO</option>
			      <option value="uber">UBER</option>
			    </select>
			    <p> </p>
		</div>		
    </div>
    
    <div class="col-sm-4">
      <h3>Datos de la infraccion</h3>
      	<div class="contenedor-login">
			    <label for="acta">Acta contravencional:</label>
				<input class="input-ingresar"  required name="acta" type="text"/>	
			    <label for="actac">Acta de comprobacion:</label>
				<input class="input-ingresar"  required name="actac" type="text"/>	
			    <label for="boleta">Boleta de citación:</label>
				<input class="input-ingresar"  required name="boleta" type="text"/>
				<label for="agente">Agente Labrante: </label>
				<input class="input-ingresar"  required name="agente" type="text"/>	
				<label for="infractor">Infractor/Contraventor:</label>
				<input class="input-ingresar"  required name="infractor" type="text"/>
				<label for="chofer">Chofer de grua:</label>
				<input class="input-ingresar"  required name="chofer" type="text"/>
		</div>			
    </div>
    
    <div class="col-sm-4">
      <h3>Confirmar ingreso</h3>   
      <div class="contenedor-login">  
            <label for="inputdefault">Observaciones:</label>
				<input class="input-ingresar"  required name="chofer" type="text"/>	
				<p class="boton-margen-inferior"><input class="boton input-ingresar" type="submit" name="Cargar" value="Cargar Registro"/></p>
     			<p class="boton-margen-inferior"><input class="boton input-ingresar" type="reset" name="borrar" value="Limpiar"/></p>
     </div>
  	</div>

</div>
  	
</div>	
	
</form>
	
<!-- motos marca
<option value="">Seleccionar...</option>
<option value="abat">Abat</option>
<option value="adiva">Adiva</option>
<option value="adly">Adly</option>
<option value="aeon">Aeon</option>
<option value="aiyumo">Aiyumo</option>
<option value="aprilia">Aprilia</option>
<option value="azel">Azel</option>
<option value="benelli">Benelli</option>
<option value="beta">Beta</option>
<option value="big-bear-choppers">Big Bear Choppers</option>
<option value="bimota">Bimota </option>
<option value="bmw">BMW</option>
<option value="brammo">Brammo</option>
<option value="buell">Buell</option>
<option value="bultaco">Bultaco</option>
<option value="byebyke">BYE BIKE</option>
<option value="cagiva">Cagiva</option>
<option value="can-am">Can-Am</option>
<option value="cfmoto">CFMoto</option>
<option value="clipic">Clipic</option>
<option value="cpi">Cpi</option>
<option value="crs">CR&amp;S</option>
<option value="csr">Csr</option>
<option value="daelim">Daelim</option>
<option value="derbi">Derbi</option>
<option value="ducati">Ducati</option>
<option value="e-max">E-Max</option>
<option value="fantic">Fantic</option>
<option value="f-b-mondial">F.B. Mondial</option>
<option value="garelli">Garelli</option>
<option value="gas-gas">Gas Gas</option>
<option value="generic">Generic</option>
<option value="gilera">Gilera</option>
<option value="goccia">Goccia</option>
<option value="goes">Goes</option>
<option value="govecs">Govecs</option>
<option value="hanway">Hanway</option>
<option value="harley-davidson">Harley-Davidson</option>
<option value="headbanger">Headbanger</option>
<option value="hm">HM</option>
<option value="honda">Honda</option>
<option value="hudson-boss">Hudson Boss</option>
<option value="husaberg">Husaberg</option>
<option value="husqvarna">Husqvarna</option>
<option value="hyosung">Hyosung</option>
<option value="i-moto">I-moto</option>
<option value="indian">Indian</option>
<option value="italjet">Italjet</option>
<option value="kawasaki">Kawasaki</option>
<option value="keeway">Keeway</option>
<option value="kenrod">Kenrod</option>
<option value="ksr-moto">KSR Moto</option>
<option value="ktm">KTM</option>
<option value="kymco">KYMCO</option>
<option value="lambretta">Lambretta</option>
<option value="lemev">Lemev</option>
<option value="leonart">Leonart</option>
<option value="linhai">Linhai</option>
<option value="lml">LML</option>
<option value="lotus">Lotus</option>
<option value="macbor">Macbor</option>
<option value="malaguti">Malaguti</option>
<option value="mash">Mash</option>
<option value="metrakit">Metrakit</option>
<option value="mh">MH Motorcycles</option>
<option value="mini">Mini</option>
<option value="montesa">Montesa</option>
<option value="motivas">Motivas</option>
<option value="moto-guzzi">Moto Guzzi</option>
<option value="moto-morini">Moto Morini</option>
<option value="mtr">MTR</option>
<option value="mv-agusta">MV Agusta</option>
<option value="mx-motor">MX Motor</option>
<option value="nimoto">Nimoto</option>
<option value="oset">Oset</option>
<option value="ossa">Ossa</option>
<option value="oxygen">Oxygen</option>
<option value="peugeot">Peugeot</option>
<option value="pgo">PGO</option>
<option value="piaggio">Piaggio</option>
<option value="polaris">Polaris</option>
<option value="polini">Polini</option>
<option value="quadro">Quadro</option>
<option value="quantya">Quantya</option>
<option value="rav">RAV</option>
<option value="rieju">Rieju</option>
<option value="riya">Riya</option>
<option value="royal-enfield">Royal Enfield</option>
<option value="scomadi">Scomadi</option>
<option value="scorpa">Scorpa</option>
<option value="scutum">Scutum</option>
<option value="sherco">Sherco</option>
<option value="smart">Smart</option>
<option value="sumco">Sumco</option>
<option value="suzuki">Suzuki</option>
<option value="sym">SYM</option>
<option value="tacita">Tacita</option>
<option value="tgb">TGB</option>
<option value="tm-racing">TM Racing</option>
<option value="torrot">Torrot</option>
<option value="triumph">Triumph</option>
<option value="ural">Ural</option>
<option value="vectrix">Vectrix</option>
<option value="vespa">Vespa</option>
<option value="victory">Victory</option>
<option value="volta">Volta</option>
<option value="voxan">Voxan</option>
<option value="vyrus">Vyrus</option>
<option value="xero">Xero</option>
<option value="yamaha">Yamaha</option>
<option value="zero">Zero</option>
 -->	
	
	
	 <!-- include file="footer.jsp"  -->
</body>
</html>