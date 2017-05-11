package com.dgcactysv.controladores;

import com.dgcactysv.negocio.*;
import com.dgcactysv.datos.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;





public class ControladorMostrar extends HttpServlet {
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
		request.setAttribute("usuario", (String) session.getAttribute("usuario"));

		response.setContentType("text/html;charset=UTF-8");
		VehiculoABM v= new VehiculoABM();
		String dominio=request.getParameter("dominio");
		
		dominio=v.buscarVehiculo(dominio);
		
		request.setAttribute("dominio", dominio);
		

		request.getRequestDispatcher("/jsp/mostrarVehiculo.jsp").forward(request, response);	
	

	}
}