package com.dgcactysv.Test;

import com.dgcactysv.negocio.AutomotorABM;
import com.dgcactysv.negocio.Facade;

public class TestAutomotor {

	public static void main(String[] args) {
		
		Facade facade=new Facade();
		AutomotorABM adm= facade.getAutomotorABM();

		try {
			System.out.println( adm.traerAutomotor("LLL444").toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}

}
