package com.example.web;
/**
 * 
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.BeerExpert;

/**
 * @author chacks
 *
 */
public class BeerSelect extends HttpServlet {

	
	
	public BeerSelect() {
		super();
		// TODO Auto-generated constructor stub
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest
	 * , javax.servlet.http.HttpServletResponse)
	 */
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String c = request.getParameter("color");
		BeerExpert be = new BeerExpert();
		
		List<String> result = be.getBrands(c);
//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//		out.println("Beer Selection Advice<br>");
		request.setAttribute("corpEmail", getServletContext().getInitParameter("corp-email"));
		request.setAttribute("styles", result);
		request.setAttribute("serverInfo", request.getServletContext().getServerInfo());
		request.setAttribute("realPath", request.getServletContext().getRealPath("css/BeerAdvisor.css"));
		request.setAttribute("headerNamesEnum", request.getHeaderNames());
		
		RequestDispatcher view = request.getRequestDispatcher("/BeerForm/result.jsp");
		
		view.forward(request, response);
		
	}
}
