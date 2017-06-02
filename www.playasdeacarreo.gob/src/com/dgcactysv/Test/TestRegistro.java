package com.dgcactysv.Test;

import com.dgcactysv.negocio.RegistroABM;

import java.util.List;

import com.dgcactysv.modelo.Registro;
import com.dgcactysv.negocio.Facade;

public class TestRegistro {
	public static void main(String[] args) {
	
		Facade facade=new Facade();
	RegistroABM adm= facade.getRegistroABM();

	try {
		System.out.println( adm.traerRegistro("SUM819").toString());

		
	} catch (Exception e) {
		e.printStackTrace();
	}
/*Todos los registros	
	try {
		List<Registro> inspecciones = adm.traerListaRegistro();
		for(Registro i:inspecciones){
			System.out.println(i.toString());
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}*/
/*Registros en playa	
	try {
		List<Registro> inspecciones = adm.traerEnPlaya();
		for(Registro i:inspecciones){
			System.out.println(i.toString());
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}*/

/*Registros en playa*/
	try {
		List<Registro> inspecciones = adm.traerEgresos();
		for(Registro i:inspecciones){
			System.out.println(i.toString());
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}	
	
	
}
}
