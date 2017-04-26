package com.dgcactysv.Test;

import java.util.List;

import com.dgcactysv.funciones.Funciones;
import com.dgcactysv.modelo.Vehiculo;

public class Test {

	public static void main(String[] args) {
		String dominio="";
		List<Vehiculo> vehiculos = Funciones.getLstVehiculos();
		for (Vehiculo vehiculo : vehiculos) {
	System.out.println("--->"+vehiculo.getDominio()); } 
		// TODO Auto-generated method stub

		for (Vehiculo vehiculo : vehiculos) {
			if(vehiculo.getDominio().compareTo("EXQ608")==0){
				dominio=vehiculo.getDominio();
			
			}
			
		}
		
	System.out.println(dominio);	
	
	}
	


}
