package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Validators;

@WebServlet("/InputNameServlet")
public class InputNameServlet extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		String Name = req.getParameter("name");
		String Email = req.getParameter("email");
		String Password = req.getParameter("password");
		boolean isError = false;
		
		if(Validators.isBlank(Name)) {
			isError = true;
			req.setAttribute("nameerr","Please Enter Name");
		}else if(!Validators.AlphaRegEx(Name))
		{
			isError = true;
			req.setAttribute("nameerr","Please Enter Valid Name");
			req.setAttribute("namevalue",Name);
		}else {
			req.setAttribute("namevalue",Name);
		}
		
		if(Validators.isBlank(Email)) {
			isError = true;
			req.setAttribute("emailerr","Please Enter Email");
		}else {
			req.setAttribute("emailValue",Email);
		}
		
		if(Validators.isBlank(Password)) {
			isError = true;
			req.setAttribute("passerr","Please Enter Password");
		}
		
		if(isError) {
			RequestDispatcher rd = req.getRequestDispatcher("InputName.jsp");
			rd.forward(req, res);
		}else {
			RequestDispatcher rd = req.getRequestDispatcher("OutputName.jsp");
			rd.forward(req, res);
		}
		System.out.println("Servlet called....");
	}
}
