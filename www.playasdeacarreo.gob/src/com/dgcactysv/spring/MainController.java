package com.dgcactysv.spring;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dgcactysv.negocio.RegistroABM;
import com.dgcactysv.modelo.Registro;
import com.dgcactysv.negocio.Facade;

/**
 * A Spring controller that allows the users to download an Excel document
 * generated by the JExcelApi library.
 * 
 * @author www.codejava.net
 * 
 */
@Controller
public class MainController {

	/**
	 * Handle request to the default page
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String viewHome() {
		return "home";
	}

	/**
	 * Handle request to download an Excel document 
	 */
	@RequestMapping(value = "/downloadExcel", method = RequestMethod.GET)
	public ModelAndView downloadExcel() {
		// create some sample data
		
		Facade facade= new Facade();
		RegistroABM facede= facade.getRegistroABM();
		List<Registro> listReg = facede.traerEnPlaya();

		// return a view which will be resolved by an excel view resolver
		return new ModelAndView("excelView", "listReg", listReg);
	}
}