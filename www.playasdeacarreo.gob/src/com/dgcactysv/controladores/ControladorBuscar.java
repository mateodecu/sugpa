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





public class ControladorBuscar extends HttpServlet {
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
		response.setContentType("text/html;charset=UTF-8");

		PrintWriter salida = response.getWriter();
		salida.println("");
		salida.println("<!DOCTYPE 4.01 Transitional//EN\">");
		salida.println("<HTML>");
		salida.println(" <HEAD>");
		salida.println(" <TITLE>Playas de acarreo</TITLE>");
		salida.println(" </HEAD>");
		salida.println(" <BODY>");
		salida.println("");
		salida.println(" </BODY>");
		salida.println("</HTML>");
		
		request.getRequestDispatcher("/jsp/buscarVehiculo.jsp").forward(request, response);	
	

	}
}