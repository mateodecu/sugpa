package com.dgcactysv.negocio;

public class Facade {
	public AutomotorABM getAutomotorABM() {
		return new AutomotorABM();
	}

//	public CuotaABM getCuotaABM() {
//		return new CuotaABM();
//	}
}