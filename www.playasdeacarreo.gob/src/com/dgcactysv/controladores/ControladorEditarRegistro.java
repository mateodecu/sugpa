package com.dgcactysv.controladores;

import com.dgcactysv.negocio.*;
import com.dgcactysv.datos.*;
import com.dgcactysv.modelo.Vehiculo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;





public class ControladorEditarRegistro extends HttpServlet {
	//Hotel hotel=Hotel.getInstanciaHotel();		
	private static final long serialVersionUID = 1L;
	
	/* NO deberia atender por GET */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException {
		
		doPost(request, response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException {
		
		HttpSession session= (HttpSession) request.getSession();
		request.setAttribute("usuario", (String) session.getAttribute("usuario"));
		
		request.setAttribute("vehiculo", (Vehiculo) session.getAttribute("vehiculo"));
		
/*		
		Vehiculo vehiculo = (Vehiculo) request.getAttribute("vehiculo");
		
		request.setAttribute("vehiculo", vehiculo);
*/		
 		
		request.getRequestDispatcher("/jsp/editarRegistro.jsp").forward(request, response);	
	

	}
}