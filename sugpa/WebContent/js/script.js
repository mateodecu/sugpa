

/* Fecha y Hora By Chivi */ 
	/* COMIENZA EL SCRIPT DEL RELOJ */ 
function actualizaReloj(){  
	/* CAPTURAMOS LA HORA, LOS MINUTOS Y LOS SEGUNDOS */ 
marcacion = new Date()  
	/* CAPTURAMOS LA HORA */ 
Hora = marcacion.getHours()  
	/* CAPTURAMOS LOS MINUTOS */ 
Minutos = marcacion.getMinutes()  
	/* CAPTURAMOS LOS SEGUNDOS */ 
Segundos = marcacion.getSeconds()  
	/* SI LA HORA, LOS MINUTOS O LOS SEGUNDOS 
SIN MENORES O IGUAL A 9, LE AÑADIMOS UN 0 */ 
if (Hora<=9) 
Hora = "0" + Hora 
if (Minutos<=9) 
Minutos = "0" + Minutos 
if (Segundos<=9) 
Segundos = "0" + Segundos 
	/* TERMINA EL SCRIPT DEL RELOJ */
	/* COMIENZA EL SCRIPT DE LA FECHA */ 
var Dia = new Array("Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sábado", 
"Domingo"); 
var Mes = new 
Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"); 
var Hoy = new Date(); 
var Anio = Hoy.getFullYear(); 
var Fecha = "Ciudad Autonoma de Buenos Aires, " + Dia[Hoy.getDay()] + ", " + Hoy.getDate() + " de " + Mes[Hoy.getMonth()] + " de " + Anio + ". Hora local: "; 
	/* TERMINA EL SCRIPT DE LA FECHA */ 
	/* CREAMOS 4 VARIABLES PARA DARLE FORMATO A NUESTRO SCRIPT */ 
var Inicio, Script, Final, Total 
	/* EN INICIO LE INDICAMOS UN COLOR DE FUENTE Y UN TAMAÑO */ 
Inicio = " " 
	/* EN RELOJ LE INDICAMOS LA HORA, LOS MINUTOS Y LOS SEGUNDOS */ 
Script = Fecha + Hora + ":" + Minutos + ":" + Segundos 
	/* EN FINAL CERRAMOS EL TAG DE LA FUENTE */ 
Final = " " 
	/* EN TOTAL FINALIZAMOS EL RELOJ UNIENDO LAS VARIABLES */ 
Total = Inicio + Script + Final 
	/* CAPTURAMOS UNA CELDA PARA MOSTRAR EL RELOJ */ 
document.getElementById('Fecha_Reloj').innerHTML = Total 
	/* INDICAMOS QUE NOS REFRESQUE EL RELOJ CADA 1 SEGUNDO */ 
setTimeout("actualizaReloj()",1000)  
} 
/*imprimir pantalla*/
function printPage() {
    window.print();
}



/*Generar tabla dinamica*/
function format ( d ) {
	var fecha = new Date();
	var dia = d.fechaIng.dayOfMonth;
	var mes = d.fechaIng.month;
	var anio = d.fechaIng.year;
	
	if (dia<=9) 
		dia = "0" + dia 
	if (mes<=9) 
		mes = "0" + mes
		
		
    return  'Registro: '+d.registro+'<br>'
    		+'Levantando en: '+d.levantadoEn+'<br>'
    		+'Fecha de ingreso: '+dia+'/'+mes+'/'+anio+' Hora:'+d.horaIng+'<br>'
    		+'Agente labrante: '+d.agenteLabrante+'<br>'
    		+'Infractor/contraventor: '+d.infractor+'<br>'
    		+'Agente de Playa: '+d.agenteDePlaya+'<br>'
    		+'Chofer de grua: '+d.gruaChofer+'<br>'
    		+'<p class=boton-margen-inferior>'
		    +'<form action=editarRegistro>'
			+'<input class=boton input-ingresar type=submit name=editar value=Editar />'
			+'<input name="demo" style="display:none;" value="'+d.dominio+'" type="text">'
			+'</form>'
			+'</p>'
		    +'<form action=egreso>'
			+'<input class=boton input-ingresar type=submit name=egresar value=Egresar />'
			+'<input name="demo" style="display:none;" value="'+d.dominio+'" type="text">'
			+'</form>';
}

$(document).ready(function(){

//tabla dinamica con mostrar detalle	  
	 var table = $('#mydata').DataTable({
	        "processing": true,
		    "sAjaxSource":"jsp/data.jsp",
	        "columns": [{
			                "class":          "details-control",
			                "orderable":      false,
			                "data":           null,
			                "defaultContent": ""
			            },
	                    { "data": "registro" },
	                    { "data": "dominio" },
	                    { "data": "marca" },
	                    { "data": "modelo" },
	                    { "data": "motivo" },
	                    { "data": "descripcion" },
	                    { "data": "actaDeComprobacion" },
	                    { "data": "boletaDeCitacion" },	                    
	                    { "data": "actaContravencional" }
	                    ],
	      "order": [[1, 'dsc']]
		  }
			 );
	
	
	    // Array to track the ids of the details displayed rows
	    var detailRows = [];
	 
	    $('#mydata tbody').on( 'click', 'tr td.details-control', function () {
	        var tr = $(this).closest('tr');
	        var row = table.row( tr );
	        var idx = $.inArray( tr.attr('id'), detailRows );
	 
	        if ( row.child.isShown() ) {
	            tr.removeClass( 'details' );
	            row.child.hide();
	 
	            // Remove from the 'open' array
	            detailRows.splice( idx, 1 );
	        }
	        else {
	            tr.addClass( 'details' );
	            row.child( format( row.data() ) ).show();
	 
	            // Add to the 'open' array
	            if ( idx === -1 ) {
	                detailRows.push( tr.attr('id') );
	            }
	        }
	    } );
	    
	    // On each draw, loop over the `detailRows` array and show any child rows
	    table.on( 'draw', function () {
	        $.each( detailRows, function ( i, id ) {
	            $('#'+id+' td.details-control').trigger( 'click' );
	        } );
	    } );	    
	 
} );

$(document).ready(function(){
	//tabla dinamica con popup
	 var tabla2 = $('#mydata2').DataTable(); 
	/*tabla2.row( this ).data
	 * me trae todos los datos separados del td separados por ;
	*tabla2.row( this ).index
	*me trae el indice del array
	*/
	 $('#mydata2 tbody').on( 'click', 'tr', function () {
		  var rowData = tabla2.row( this ).index();
		  document.getElementById("row").innerHTML=rowData; 
} );
} );

/*Calendario*/



/*mensajes confirma*/
function mensajeConfirma() {
    var txt;
    if (confirm("Presione aceptar para confirmar el egreso") == true) {
        txt = "You pressed OK!";
    } else {
        txt = "You pressed Cancel!";
    }
    document.getElementById("demo").innerHTML = txt;
}

function mensajeConfirmaI() {
    var txt;
    if (confirm("Presione aceptar para confirmar el ingreso") == true) {
        txt = "You pressed OK!";
    } else {
        txt = "You pressed Cancel!";
    }
    document.getElementById("demo").innerHTML = txt;
}
/*mostrar ocultar*/
$(document).ready(function(){
    $("#hide").click(function(){
        $("#div1").hide();
    });
    $("#show").click(function(){
        $("#div1").show();
    });
});