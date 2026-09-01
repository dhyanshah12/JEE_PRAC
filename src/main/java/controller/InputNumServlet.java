package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InputNumServlet")
public class InputNumServlet extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		String strn1 = req.getParameter("n1");
		String strn2 = req.getParameter("n2");
		String opr = req.getParameter("opr");
		
		
		int n1 = Integer.parseInt(strn1);
		int n2 = Integer.parseInt(strn2);
		
		PrintWriter out = res.getWriter();
		if(opr.equals("add")) 
		{
			int ans = n1+n2;
			out.print(ans);
		}
		else if(opr.equals("sub")) {
			int ans = n1-n2;
			out.print(ans);
		}
		else if(opr.equals("mul")) {
			int ans = n1*n2;
			out.print(ans);
		}else if(opr.equals("div")) {
			int ans = n1/n2;
			out.print(ans);
			
			System.out.println(ans);
		}
		
	}
	
}
