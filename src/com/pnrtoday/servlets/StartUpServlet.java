package com.pnrtoday.servlets;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class StartUpServlet extends HttpServlet {
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("StartUpServlet..");
	}
}
