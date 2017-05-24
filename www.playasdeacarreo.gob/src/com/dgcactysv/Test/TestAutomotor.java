package com.dgcactysv.Test;

import com.dgcactysv.negocio.AdmSUGPA;

public class TestAutomotor {

	public static void main(String[] args) {
	
		AdmSUGPA adm= new AdmSUGPA();

		try {
			System.out.println( adm.traerAutomotor("LLL444").toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}

}
