package com.dgcactysv.spring;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import com.dgcactysv.negocio.RegistroABM;
import com.dgcactysv.modelo.Registro;
import com.dgcactysv.negocio.Facade;

import org.springframework.web.servlet.view.document.AbstractJExcelView;

/**
 * This class builds an Excel spreadsheet document using JExcelApi library.
 * @author www.codejava.net
 *
 */
public class ExcelBuilder extends AbstractJExcelView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model,
			WritableWorkbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		// get data model which is passed by the Spring container
		List <Registro> listReg=(List<Registro>) model.get("listReg");
		
		// create a new Excel sheet
		WritableSheet sheet = workbook.createSheet("Java Books", 0);
		
		// create header row
		sheet.addCell(new Label(0, 0, "Registro"));
		sheet.addCell(new Label(1, 0, "Dominio"));
		sheet.addCell(new Label(2, 0, "Marca"));
		sheet.addCell(new Label(3, 0, "Modelo"));
		sheet.addCell(new Label(4, 0, "Motivo"));
		
		// create data rows
		int rowCount = 1;
		
		for (Registro aBook : listReg) {
			sheet.addCell(new Label(0, rowCount, aBook.getRegistro()));
			sheet.addCell(new Label(1, rowCount, aBook.getDominio()));
			sheet.addCell(new Label(2, rowCount, aBook.getMarca()));
			sheet.addCell(new Label(3, rowCount, aBook.getModelo()));
			sheet.addCell(new Label(4, rowCount, aBook.getMotivo()));
			
			rowCount++;
		}
	}
}