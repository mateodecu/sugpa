package com.dgcactysv.controladores;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ControladorInicio
 */


public class ControladorInicio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ControladorInicio() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session= (HttpSession) request.getSession(true);
		request.setAttribute("usuario", (String) session.getAttribute("usuario"));
		String usuario=(String) session.getAttribute("usuario");
		
		try {
		if(usuario.compareTo("Pizarro Maximiliano")==0){
			request.getRequestDispatcher("/jsp/bienvenidoAgente.jsp").forward(request, response);	
		}else
			if(usuario.compareTo("Decurgez Mateo")==0){
				request.getRequestDispatcher("/jsp/bienvenidoLegalesAbandonados.jsp").forward(request, response);
			}else
				if(usuario.compareTo("Pietrafesa Sergio")==0){
					request.getRequestDispatcher("/jsp/bienvenidoGerencia.jsp").forward(request, response);
				}else
					if(usuario.compareTo("Miraglia Walter")==0){
						request.getRequestDispatcher("/jsp/bienvenidoLegales.jsp").forward(request, response);
					}
			else{request.getRequestDispatcher("/jsp/errorlogin.jsp").forward(request, response);}	
		}catch (Exception e) {
			request.getRequestDispatcher("/jsp/errorlogin.jsp").forward(request, response);
			
		}	
		
		request.getRequestDispatcher("/jsp/index.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
