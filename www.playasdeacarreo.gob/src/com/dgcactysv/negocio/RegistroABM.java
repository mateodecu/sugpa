package com.dgcactysv.negocio;

import com.dgcactysv.dao.RegistroDao;
import com.dgcactysv.modelo.Registro;

import java.io.File;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class RegistroABM {
	
	private RegistroDao daoA=new RegistroDao();
	
	public Registro traerRegistro(String dominio) throws Exception {

		Registro a = daoA.traerRegistro(dominio);

		if (a == null) {
			throw new Exception("No existe Registro con ese dominio");
		}
		return a;
	}
	
	public List<Registro> traerListaRegistro(){
		
		return daoA.traerListaRegistro();
		}
	
	public List<Registro> traerEnPlaya(){
		
		return daoA.traerEnPlaya();
		}
	
	public List<Registro> traerEgresos(){
		
		return daoA.traerEgresos();
		}
	
	}

	
