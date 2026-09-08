package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Validators;

@WebServlet("/GirRegController")
public class GirRegController extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		String name = req.getParameter("name");
		String gender = req.getParameter("gender");
		String city = req.getParameter("city");
		String contact = req.getParameter("contact");
		boolean isError = false;
		
		if(Validators.isBlank(name)) {
			isError = true;
			req.setAttribute("nameerr","Please Enter Name");
		}else if(!Validators.AlphaRegEx(name)) {
			req.setAttribute("nameerr","Please Enter Valid Name");
			req.setAttribute("nameValue",name);
		}else {
			req.setAttribute("nameValue",name);
		}
		
		if(Validators.isBlank(gender)) {
			isError = true;
			req.setAttribute("generr","Please Select gender");
		}else {
			req.setAttribute("genValue",gender);
		}
		
		if(Validators.isBlank(city) || city.equals("-1")) {
			isError = true;
			req.setAttribute("cityerr","Please Select City");
		}else {
			req.setAttribute("cityValue",city);
		}
		
		if(Validators.isBlank(contact)) {
			isError = true;
			req.setAttribute("conerr","Please Eneter Contact");
		}else {
			req.setAttribute("conValue",contact);
		}
		
		if(isError) {
			RequestDispatcher rd = req.getRequestDispatcher("GirReg.jsp");
			rd.forward(req, res);
		}else {
			RequestDispatcher rd = req.getRequestDispatcher("GirSuccess.jsp");
			rd.forward(req, res);
		}
		System.out.println("GirController Called.....");
	}
}
