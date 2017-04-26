package com.dgcactysv.controladores;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class ControladorLogin extends HttpServlet {
	//Hotel hotel=Hotel.getInstanciaHotel();		
	private static final long serialVersionUID = 1L;
	
	/* NO deberia atender por GET */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException {
		
		doPost(request, response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException {
		
		HttpSession session = request.getSession();
		try {
			String usuario= request.getParameter("usuario");
			
			if(usuario.compareTo("agente")==0){
				request.setAttribute("usuario","Pizarro Maximiliano");
				request.getRequestDispatcher("/jsp/bienvenidoAgente.jsp").forward(request, response);	
			}else{
				if(usuario.compareTo("legales")==0){
					request.setAttribute("usuario","Mateo ");
					request.getRequestDispatcher("/jsp/bienvenidoLegales.jsp").forward(request, response);	
				}else{
					if(usuario.compareTo("gerencia")==0){
						request.setAttribute("usuario","Pietrafesa Sergio");
						request.getRequestDispatcher("/jsp/bienvenidoGerencia.jsp").forward(request, response);	
					}
				else{request.getRequestDispatcher("/jsp/errorlogin.jsp").forward(request, response);}		
			}
			
			}
	} catch (Exception e) {
		request.getRequestDispatcher("/jsp/errorlogin.jsp").forward(request, response);
		
	}	

	}
}