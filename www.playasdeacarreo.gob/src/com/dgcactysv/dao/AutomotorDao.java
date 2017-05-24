package com.dgcactysv.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dgcactysv.modelo.Automotor;

public class AutomotorDao {
	
	
	private static Session session;

	private Transaction tx;
	
	private void iniciaOperacion() throws HibernateException {
		session = HibernateUtil.getSessionFactory().openSession();
		tx = session.beginTransaction();
	}

	private void manejaExcepcion(HibernateException he) throws HibernateException {
		tx.rollback();
		throw new HibernateException("ERROR en la capa de acceso a datos", he);
	}
	
	public Automotor traerAutomotor(String dominio) throws HibernateException {
		Automotor objeto = null;
		try {
			iniciaOperacion();
	
			String hql="from Automotor where dominio =:dominio";
			objeto=(Automotor) session.createQuery(hql).setParameter("dominio", (String)dominio).uniqueResult();
	
		}catch (HibernateException he) {
			manejaExcepcion(he);
			throw he;
		} finally {
				session.close();
				}
		return objeto;
		}
	
	public Automotor traerAutomotor(int idAutomotor) throws HibernateException {
		Automotor objeto = null;
		try {
			iniciaOperacion();
	
			String hql="from Automotor where idAutomotor =:idAutomotor";
			objeto=(Automotor) session.createQuery(hql).setParameter("idAutomotor", (int)idAutomotor).uniqueResult();
	
		}catch (HibernateException he) {
			manejaExcepcion(he);
			throw he;
		} finally {
				session.close();
				}
		return objeto;
		}

}
