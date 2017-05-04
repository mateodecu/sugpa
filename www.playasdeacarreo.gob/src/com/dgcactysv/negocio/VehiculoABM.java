package com.dgcactysv.negocio;
import com.dgcactysv.modelo.*;
import com.dgcactysv.funciones.*;

import java.util.List;



public class VehiculoABM {
	
	public String buscarVehiculo(String dominio){
		List<Vehiculo> vehiculos = Funciones.getLstVehiculos();
		for (Vehiculo vehiculo : vehiculos) {
			if(vehiculo.getDominio().compareTo(dominio)==0){
				dominio=vehiculo.getRegistro()+";"+vehiculo.getFecha()+";"+vehiculo.getHora()+";"+vehiculo.getDominio()+";"+vehiculo.getMarca()+";"+vehiculo.getModelo()+";"+vehiculo.getMotivo()+";"+vehiculo.getPlaya();
			}
			
		}
		
		if(dominio.compareTo("")==0){
			dominio=" No se encontro el vehiculo";
		}
		return dominio;
	}

}
