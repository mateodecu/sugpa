package com.dgcactysv.negocio;

import com.dgcactysv.dao.AutomotorDao;
import com.dgcactysv.modelo.Automotor;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class AutomotorABM {
	
	private AutomotorDao daoA=new AutomotorDao();
	
	public Automotor traerAutomotor(String dominio) throws Exception {

		Automotor a = daoA.traerAutomotor(dominio);

		if (a == null) {
			throw new Exception("No existe Automotor con ese dominio");
		}
		return a;
	}
	
	public Automotor traerAutomotor(int idAutomotor) throws Exception {

		Automotor a = daoA.traerAutomotor(idAutomotor);

		if (a == null) {
			throw new Exception("No existe Automotor con ese dominio");
		}
		return a;
	}


}
