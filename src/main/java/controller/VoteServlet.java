package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VoteServlet")
public class VoteServlet extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		String name = req.getParameter("name");
		String birthYear = req.getParameter("birthyear");
		String gender = req.getParameter("gender");
		String error = "";
		Boolean isError = false;
		String voteStatus = "";
		String alphaRegEx = "[a-zA-Z]+";
		String digitRegEx = "[0-9]{4}";
		
		if(name==null || name.isBlank()) {
			error = "Please Enter Name<br>";
			isError = true;
		}else if(name.matches(alphaRegEx)==false) {
			error += "Please Enter Valid Name<br>";
			isError = true;
		}
		if(birthYear==null  || birthYear.isBlank()) {
			error += "Please Enter BirthYear<br>";
			isError = true;
		}else if(birthYear.matches(digitRegEx)==false) {
			error += "Please Enter Valid BirthYear<br>";
			isError = true;
		}
		if(gender==null || gender.isBlank()) {
			error += "Please Enter Gender";
			isError = true;
		}
		
		res.setContentType("text/html");
		//To Print On the Browser
		PrintWriter out = res.getWriter();
		
		if(isError==true) {
			out.print("<font color=red>"+error+"</font>");
		}else {
			Calendar c = Calendar.getInstance();
			
			int year = c.get(Calendar.YEAR);
			int birthyear = Integer.parseInt(birthYear);
			int age = year - birthyear;
			
			

			if(gender.equals("male") && age>=21) {
				voteStatus = "Eligible for Vote";
			}else if(gender.equals("female") && age>=23) {
				voteStatus= "Eligible For Vote";
			}else {
				voteStatus ="Not Eligible For Vote";
			}
			out.print("Name => "+name+"<br>");
			out.print("BithYear => "+birthyear+"<br>");
			out.print("Gender => "+gender+"<br>");
			out.print("VoteStatus => "+voteStatus);
		}		
		System.out.println("VoteServlet Called.....");
	}
	
}
